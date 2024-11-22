public class CallStack {
    public void method1() {
        System.debug('1');
        this.method2();
    }
    public void method2() {
        System.debug('2');
        this.method3();
    }
    public void method3() {
        System.debug('3');
        this.method4();
    }
    public void method4() {
        System.debug('4');
        this.method5();
    }
    public void method5() {
        System.debug('Method 5 executed');
    }
}
