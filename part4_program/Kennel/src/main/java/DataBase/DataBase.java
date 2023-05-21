package DataBase;

import Animals.Animal;

import java.util.ArrayList;
import java.util.List;

public class DataBase {

    private static final List<AnimalLink> animalData = new ArrayList<>();

    private DataBase() {
    };

    public static void addAnimalLink(AnimalLink link) {
        animalData.add(link);
    }
    public static void viewAll() {
        if (animalData.size() != 0) {
            for (AnimalLink elem: animalData
                 ) {
                System.out.println(elem);
            }
            System.out.println();
        } else {
            System.out.println("Пока информации о животных нет. Добавьте свое первое животное.");
        }
    }
    public static AnimalLink findById(int id) {
        try {
            animalData.get(id-1);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Error");
        }
        return animalData.get(id-1);
    }

    public static List<AnimalLink> getAll() {
        return animalData;
    }
}
