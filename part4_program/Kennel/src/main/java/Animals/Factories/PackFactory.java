package Animals.Factories;

import Animals.*;

import java.util.ArrayList;
import java.util.Date;

public class PackFactory implements AbstractAnimalFactory<PackAnimal> {

    @Override
    public PackAnimal createAnimal(String className, String name, Date birthday, ArrayList<String> commands) {
        return switch (className) {
            case "horse" -> new Horse(className, name, birthday, commands);
            case "camel" -> new Camel(className, name, birthday, commands);
            default -> new Donkey(className, name, birthday, commands);
        };
    }
}
