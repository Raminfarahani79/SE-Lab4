package calculator;

public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }

    public int divide(int a, int b) {
        return a/b;
    }

    public int sqrt(int a) {
        throw new RuntimeException("method not implemented");
    }
}