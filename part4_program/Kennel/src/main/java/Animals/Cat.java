package Animals;

import Animals.PetAnimal;

import java.util.ArrayList;
import java.util.Date;

public class Cat extends PetAnimal {
    public Cat(String animalClass, String name, Date birthday, ArrayList<String> commands) {
        this.animalClass = animalClass;
        this.name = name;
        this.birthday = birthday;
        this.commands = commands;
    }

}
