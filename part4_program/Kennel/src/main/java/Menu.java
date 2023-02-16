import Animals.Animal;
import Animals.Factories.PackFactory;
import Animals.Factories.PetFactory;
import DataBase.DataBase;
import DataBase.AnimalLink;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

public class Menu {
    Scanner scanner = new Scanner(System.in);
    public void start(){
        boolean f = true;
        while (f){
            scanner.reset();
            mainMenu();
            System.out.print("Пожалуйста, выберите пункт меню: ");
            Scanner scanner = new Scanner(System.in);
                try {
                    int no = Integer.valueOf(scanner.nextLine());

                    switch (no) {
                        case 0:
                            System.out.println("Завершение работы приложения.");
                            f = false;
                            break;
                        case 1:
                            startCreateAnimal();
                            break;
                        case 2:
                            DataBase.viewAll();
                            break;
                        case 3:
                            findAnimal();
                            break;
                        case 4:
                            addCommand();
                            break;
                        case 5:
                            ImportExportData.saveData("temp");
                            break;
                        default:
                            System.out.println("Укажите корректный пункт меню.");
                    }
                }
                catch (Exception e){
                    System.out.println("Укажите корректный пункт меню.");
                }
        }
    }
    public void startCreateAnimal() {
        scanner.reset();
        System.out.print("Введите имя животного: ");
        String name = scanner.nextLine();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        System.out.print("Введите дату рождения животного в формате: 'dd-MM-yyyy': ");
        String date = scanner.nextLine();
        Date birthday = null;
        boolean f = true;
        try {
            birthday = dateFormat.parse(date);
        } catch (ParseException E) {
            System.out.println("Вы ввели некорректные данный. Повторите попытку.");
            f = false;
        }
        if (f) {
            createAnimal(name, birthday);
        }
    }

    public void createAnimal(String name, Date birthday) {
        scanner.reset();
        animalType();
        System.out.print("Выберите класс животного: ");
        try {
            int no = Integer.valueOf(scanner.nextLine());
            switch (no) {
                case 1:
                    endCreateAnimal("Pet", name, birthday);
                    break;
                case 2:
                    endCreateAnimal("Pack", name, birthday);
                    break;
                default:
                    System.out.println("Укажите корректный пункт меню.");
            }
        }
        catch (NumberFormatException e) {
            System.out.println("Вы ввели некорректные данный. Повторите попытку.");
        }
    }

    public void endCreateAnimal(String type, String name, Date birthday) {
        scanner.reset();
        if (type.equals("Pet")) {
            PetFactory petFactory = new PetFactory();
            petAnimalClass();
            System.out.print("Выберите класс животного: ");
            try {
                int no = Integer.valueOf(scanner.nextLine());
                switch (no) {
                    case 1:
                        addDataBase(petFactory.createAnimal("dog", name, birthday, new ArrayList<String>()));
                        break;
                    case 2:
                        addDataBase(petFactory.createAnimal("cat", name, birthday, new ArrayList<String>()));
                        break;
                    case 3:
                        addDataBase(petFactory.createAnimal("hamster", name, birthday, new ArrayList<String>()));
                        break;
                    default:
                        System.out.println("Укажите корректный пункт меню.");
                }
            } catch (NumberFormatException e) {
                System.out.println("Вы ввели некорректные данный. Повторите попытку.");
            }
        } else {
            packAnimalClass();
            PackFactory packFactory = new PackFactory();
            System.out.print("Выберите класс животного: ");
            try {
                int no = Integer.valueOf(scanner.nextLine());
                switch (no) {
                    case 1:
                        addDataBase(packFactory.createAnimal("horse", name, birthday, new ArrayList<String>()));
                        break;
                    case 2:
                        addDataBase(packFactory.createAnimal("camel", name, birthday, new ArrayList<String>()));
                        break;
                    case 3:
                        addDataBase(packFactory.createAnimal("donkey", name, birthday, new ArrayList<String>()));
                        break;
                    default:
                        System.out.println("Укажите корректный пункт меню.");
                }
            } catch (NumberFormatException e) {
                System.out.println("Вы ввели некорректные данный. Повторите попытку.");
            }
        }
    }
    public void addDataBase(Animal animal) {
        scanner.reset();
        System.out.println("Создано животное:");
        System.out.println(animal);
        System.out.print("Хотите сохранить? (y/n): ");
        String value = scanner.nextLine();
        int hashValue = value.hashCode();
        if (hashValue == "y".hashCode()){
           DataBase.addAnimalLink(new AnimalLink(animal));
           System.out.println("Животное успешно добавлено.");
        } else if (hashValue != "n".hashCode()) {
            System.out.println("Вы ввели некорректные данный. Повторите попытку.");
        }
    }

    public void findAnimal() {
        scanner.reset();
        System.out.print("Введите id животного: ");
        try {
            int no = Integer.valueOf(scanner.nextLine());
            try {
                AnimalLink animalLink = DataBase.findById(no);
                System.out.println(animalLink);
            } catch (IndexOutOfBoundsException e) {
                System.out.println("В питомнике нет животного с таким id.");
            }
        } catch (NumberFormatException e) {
            System.out.println("Вы ввели некорректные данный. Повторите попытку.");
        }
    }

    public void addCommand() {
        scanner.reset();
        DataBase.viewAll();
        System.out.print("Введите id животного, которому необходимо добавить команду: ");
        try {
            int no = Integer.valueOf(scanner.nextLine());
            try {
                AnimalLink animalLink = DataBase.findById(no);
                System.out.print("Введите название команды: ");
                animalLink.getAnimal().addCommand(scanner.nextLine());
                System.out.println("Команда успешно добавлена");
            } catch (IndexOutOfBoundsException e) {
                System.out.println("В питомнике нет животного с таким id.");
            }
        } catch (NumberFormatException e) {
            System.out.println("Вы ввели некорректные данный. Повторите попытку.");
        }
    }
    private void mainMenu(){
        System.out.println("***ПИТОМНИК ЖИВОТНЫХ***");
        System.out.println("1 - Добавить новое животное");
        System.out.println("2 - Показать всех животных");
        System.out.println("3 - Найти животное по id");
        System.out.println("4 - Добавить команду животному");
        System.out.println("5 - Сохранить информацию о питомцах в файл");
        System.out.println("0 - Выход");
    }

    private void petAnimalClass(){
        System.out.println("Какое животное вы хотите добавить?");
        System.out.println("1 - Собака");
        System.out.println("2 - Кошка");
        System.out.println("3 - Хомяк");
    }

    private void packAnimalClass(){
        System.out.println("Какое животное вы хотите добавить?");
        System.out.println("1 - Лошадь");
        System.out.println("2 - Верблюд");
        System.out.println("3 - Осёл");
    }

    private void animalType(){
        System.out.println("Какое животное вы хотите добавить?");
        System.out.println("1 - Домашнее животное");
        System.out.println("2 - Вьючное животное");
    }

}
