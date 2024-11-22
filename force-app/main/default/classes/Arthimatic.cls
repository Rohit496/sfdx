public class Arthimatic {
    public String name = 'Rohit';
    public static Integer multiply;
    public void sum(Integer a, Integer b) {
        System.debug('Sum is: ' + (a + b));
    }
    public Decimal sum(Integer a, Integer b, Integer c) {
        System.debug(multiply);
        System.debug(name);
        mul(10, 3);
        return a + b + c;
    }
    public static void mul(Integer a, Integer b) {
        // System.debug(name);  //  non static variable and method can not be use inside static
        multiply = a * b;
        if (a <= 0) {
            System.debug('Return Nothing');
            return;
        }
        // sum(20, 50);
        System.debug(multiply);
    }
}
