public class Vechicle {
    public String name;
    public static Integer age;
    public Vechicle() {
        System.debug('Contructor called');
    }
    public Vechicle(String name) {
        System.debug(age);
        this.name = name;
        System.debug('this:::: ' + this);
        System.debug('my name is:: ' + this.name);
    }
    public Vechicle(Integer price) {
        System.debug('Contructor called' + price);
    }

    public void Vechicle() {
        System.debug('I am method');
    }
}
