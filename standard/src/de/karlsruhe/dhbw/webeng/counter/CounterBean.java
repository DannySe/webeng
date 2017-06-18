package de.karlsruhe.dhbw.webeng.counter;

/**
 * Created by dannynator on 15.06.17.
 */
public class CounterBean {
    private int counter;

    public CounterBean() {
        this.counter = 0;
    }

    public int getCounter() {
        System.out.println(counter);
        counter = counter + 1;
        System.out.println(counter);
        return counter;
    }

    public void setCounter(int counter) {
        this.counter = counter;
    }
}
