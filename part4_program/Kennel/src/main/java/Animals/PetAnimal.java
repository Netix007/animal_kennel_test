package Animals;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public abstract class PetAnimal extends Animal {

    protected String animalClass;

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
        sb.append("Класс: Домашние животные; Вид: ")
                .append(this.getClass())
                .append("; Имя: ")
                .append(this.getName())
                .append("; Дата рождения: ")
                .append(df.format(this.birthday))
                .append("; Выполняет команды: ")
                .append(getCommands());
        return sb.toString();
    }
}
