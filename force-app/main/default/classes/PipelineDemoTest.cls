@IsTest
public class PipelineDemoTest {
    @IsTest
    public static void testPipelineDemoConstructor() {
        // Create an instance of the class to test the constructor
        PipelineDemo demo = new PipelineDemo();

        // Use System.assert to verify expected behavior
        System.assertNotEquals(
            demo,
            null,
            'PipelineDemo instance should not be null'
        );
    }

    @IsTest
    public static void testPipelineDemoNameMethod() {
        // Call the static method to ensure it doesn't throw any exceptions
        PipelineDemo.name();

        // Since the method has no functionality, no further assertions are required
    }
}
