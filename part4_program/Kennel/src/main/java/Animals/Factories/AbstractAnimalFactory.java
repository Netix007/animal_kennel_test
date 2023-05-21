package Animals.Factories;

import java.util.ArrayList;
import java.util.Date;

public interface AbstractAnimalFactory<T> {

    T createAnimal(String className, String name, Date birthday, ArrayList<String> commands);
}
