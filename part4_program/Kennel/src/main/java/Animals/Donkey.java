package Animals;

import java.util.ArrayList;
import java.util.Date;

public class Donkey extends PackAnimal{
    public Donkey(String animalClass, String name, Date birthday, ArrayList<String> commands) {
        this.animalClass = animalClass;
        this.name = name;
        this.birthday = birthday;
        this.commands = commands;
    }

}
