public class GetterSetter {
    String name;
    Integer age;
    public String color { get; }

    public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return this.name;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
    public Integer getAge() {
        return this.age;
    }
    public String customerName {
        get {
            String name = [SELECT Name FROM Account LIMIT 1].Name;
            return name;
        }
        set {
            System.debug(value);
        }
    }
}
