package IdGenerator;

import java.util.concurrent.atomic.AtomicInteger;

public class IdGenerator {

    private static final AtomicInteger COUNTER = new AtomicInteger(1);
    private final int id;
    public IdGenerator() {
        id = COUNTER.getAndIncrement();
    }
    public int getId() {
        return id;
    }
}
