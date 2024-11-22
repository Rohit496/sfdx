public class Animal {
    public String name;
    public Integer age;
    String color;

    public void printName() {
        System.debug(
            'The Name of the dog is: ' + this.name + ' is the the dog name'
        );
        this.printAge();
    }

    public void printAge() {
        System.debug(this.age);
    }
}
