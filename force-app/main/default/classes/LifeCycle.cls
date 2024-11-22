public class LifeCycle {
    {
        System.debug('Instance Block called');
    }
    static {
        System.debug('Static block called');
    }

    public LifeCycle() {
        System.debug('Constructor called');
    }

    public static void staticMethod() {
        System.debug('static method called');
    }

    public void nonStaticMethod() {
        System.debug('non-static method called');
    }
}
