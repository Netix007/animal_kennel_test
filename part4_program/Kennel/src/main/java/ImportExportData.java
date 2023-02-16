import java.io.FileWriter;
import DataBase.DataBase;
import DataBase.AnimalLink;

public class ImportExportData {
    private String fileName;

    public ImportExportData(String fileName) {
        this.fileName = fileName;
    }

    public static void saveData(String fileName) {
        try(FileWriter writer = new FileWriter(fileName + ".txt", false))
        {
            for (AnimalLink elem: DataBase.getAll())
            {
                writer.write(elem.toString());
            }

        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
