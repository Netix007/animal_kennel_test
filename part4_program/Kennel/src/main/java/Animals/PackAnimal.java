package Animals;

public abstract class PackAnimal extends Animal {

    protected String animalClass;

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("Класс: Вьючные животные; Вид: ")
                .append(this.getClass())
                .append("; Имя: ")
                .append(this.getName());
        return sb.toString();
    }
}
