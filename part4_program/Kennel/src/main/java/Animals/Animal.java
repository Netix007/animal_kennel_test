package Animals;

import java.util.ArrayList;
import java.util.Date;

public abstract class Animal {

    protected String name;
    protected Date birthday;
    protected ArrayList<String> commands;

    public String getName() {
        return name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public ArrayList<String> getCommands() {
        return commands;
    }

    public void addCommand(String str) {
        this.commands.add(str);
    }
}
