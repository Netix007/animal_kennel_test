package Animals;

import java.util.ArrayList;
import java.util.Date;

public class Hamster extends PetAnimal {
    public Hamster(String animalClass, String name, Date birthday, ArrayList<String> commands) {
        this.animalClass = animalClass;
        this.name = name;
        this.birthday = birthday;
        this.commands = commands;
    }
}
