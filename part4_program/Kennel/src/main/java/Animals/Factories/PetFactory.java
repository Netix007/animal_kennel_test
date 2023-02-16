package Animals.Factories;


import Animals.Cat;
import Animals.Dog;
import Animals.Hamster;
import Animals.PetAnimal;

import java.util.ArrayList;
import java.util.Date;

public class PetFactory implements AbstractAnimalFactory<PetAnimal> {

    @Override
    public PetAnimal createAnimal(String className, String name, Date birthday, ArrayList<String> commands) {
        return switch (className) {
            case "dog" -> new Dog(className, name, birthday, commands);
            case "cat" -> new Cat(className, name, birthday, commands);
            default -> new Hamster(className, name, birthday, commands);
        };
    }
}
