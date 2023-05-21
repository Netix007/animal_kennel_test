package Animals;

import java.util.ArrayList;
import java.util.Date;

public class Dog extends PetAnimal{
    public Dog(String animalClass, String name, Date birthday, ArrayList<String> commands) {
        this.animalClass = animalClass;
        this.name = name;
        this.birthday = birthday;
        this.commands = commands;
    }

}