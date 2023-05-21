package DataBase;

import Animals.Animal;
import IdGenerator.IdGenerator;

public class AnimalLink {

    private int id;
    private Animal animal;

    public AnimalLink(Animal animal) {
        this.id = new IdGenerator().getId();
        this.animal = animal;
    }

    public int getId() {
        return id;
    }

    public Animal getAnimal() {
        return animal;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("id: ")
                .append(this.getId())
                .append("; ")
                .append(this.getAnimal());
        return sb.toString();
    }
}
