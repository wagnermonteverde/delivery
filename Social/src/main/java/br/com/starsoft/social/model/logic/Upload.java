package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Vendedor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class Upload {

    private String path;

    public Upload(String path) {
        this.path = path;

        if (!this.isDirectoryExists(path)) {
            createDirectory(path);
        }

    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    /**
     *
     * Testa se o paramêtro caminho (path) existe.
     */
    private boolean isDirectoryExists(String path) {
        File file = new File(path);
        return file.exists() ? true : false;
    }

    /**
     *
     * Cria o diretorio baseado no paramêtro caminho (path).
     */
    private void createDirectory(String path) {
        File file = new File(path);
        if (!file.exists()) {
            file.mkdir();
        }
    }

    private void saveFile(String path, String fileName, FileItem fileItem) {
        try {
            File file = new File(path, fileName);
            FileOutputStream output = new FileOutputStream(file);
            InputStream is = fileItem.getInputStream();

            byte[] buffer = new byte[2048];
            int nLidos;

            while ((nLidos = is.read(buffer)) >= 0) {
                output.write(buffer, 0, nLidos);
            }
            output.flush();
            output.close();
        } catch (FileNotFoundException ex) {
            System.out.println(ex.getMessage());
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }
    }

    /**
     * Retorna em um Map os campos do formulário exceto o campo da imagem.
     */
    public Map<String, String> getFormValues(List l , Vendedor vendedor) {
        Map<String, String> map = new HashMap<String, String>();
        Iterator iter = l.iterator();


        String tipoForm = "padrao";
        String nomeFild = "padrao";

        while (iter.hasNext()) {

            FileItem item = (FileItem) iter.next();


            if (item.isFormField()) {

                tipoForm = item.getFieldName();
//                System.out.println(tipoForm + "-------------------------"+item.getString());

                if (tipoForm.equals("tipo")) {

                    nomeFild = item.getString();
                    System.out.println(nomeFild);
                }

                map.put(tipoForm, item.getString());


            } else {

                if (item.getName().length() > 0) {




                    String nomeArquivoDisco = trataNome(nomeFild, item.getName(), vendedor);

                    map.put("arquivo", nomeArquivoDisco);

                    this.saveFile(this.getPath(), nomeArquivoDisco, item);


                    map.put(item.getFieldName(), this.getNameFile(item));


                    item.delete();
                }
            }
        }
        return (map.size() > 0) ? map : null;
    }

    private String getNameFile(FileItem fileItem) {
        String name = fileItem.getName();
        String arq[] = name.split("\\\\");
        for (int i = 0; i < arq.length; i++) {
            name = arq[i];
        }
        return name;
    }

    public List processRequest(HttpServletRequest req) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);


        try {
            return upload.parseRequest(req);
        } catch (FileUploadException ex) {
            return null;
        }
    }

    public String[] getAllImages() {
        File dir = new File(this.getPath());
        return dir.list();
    }

    public String resolveNomeArquivo(String identificador) {


        if (identificador.equals("perfilVendedor")) {

            return "logoPerfil.jpg";

        } else if (false) {

            return "";

        }


        return null;

    }

    public String ReselvenomeImagem(String nome) {



        return null;
    }

    private String trataNome(String tipoForm, String nameArquivo , Vendedor vendedor) {

        ControlerNameImagensVendedor resolveNomes = new ControlerNameImagensVendedor();
        tipoForm = resolveNomes.resolveNomeImagens(tipoForm , vendedor);
        return trataEstensão(tipoForm, nameArquivo);

    }

    private String trataEstensão(String nome, String nameArquivo) {

        int i = nameArquivo.lastIndexOf(".");

        nameArquivo = nameArquivo.substring(i, nameArquivo.length());

        return nome + nameArquivo;
    }
}