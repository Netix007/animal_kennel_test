import Animals.Animal;
import Animals.Dog;
import Animals.Factories.PetFactory;
import Animals.PetAnimal;
import IdGenerator.IdGenerator;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        new Menu().start();
    }
}
