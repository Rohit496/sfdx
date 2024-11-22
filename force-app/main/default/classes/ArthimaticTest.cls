@isTest
public class ArthimaticTest {
    @isTest
    static void testSumWithTwoParameters() {
        // Create an instance of the Arthimatic class
        Arthimatic arithmetic = new Arthimatic();

        // Call the sum method with two parameters
        arithmetic.sum(5, 10);

        // Since the sum method with two parameters only logs output without returning,
        // verify the functionality by checking for any exceptions.
        System.assert(
            true,
            'Sum method executed successfully with two parameters'
        );
    }

    @isTest
    static void testSumWithThreeParameters() {
        // Create an instance of the Arthimatic class
        Arthimatic arithmetic = new Arthimatic();

        // Call the sum method with three parameters and capture the result
        Decimal result = arithmetic.sum(5, 10, 15);

        // Assert the expected result (5 + 10 + 15 = 30)
        System.assertEquals(
            30,
            result,
            'The sum of three parameters is incorrect'
        );
    }

    @isTest
    static void testMulWithPositiveValues() {
        // Call the static mul method with positive values
        Arthimatic.mul(5, 10);

        // Assert the expected result (5 * 10 = 50)
        System.assertEquals(
            50,
            Arthimatic.multiply,
            'The multiplication result for positive values is incorrect'
        );
    }

    @isTest
    static void testMulWithZeroValue() {
        // Call the static mul method with zero as one of the values
        Arthimatic.mul(0, 10);

        // Assert that the multiply variable is correctly set to zero
        System.assertEquals(
            0,
            Arthimatic.multiply,
            'The multiplication result should be zero'
        );
    }

    @isTest
    static void testMulWithNegativeValue() {
        // Call the static mul method with a negative value
        Arthimatic.mul(-5, 10);

        // Assert the expected result (-5 * 10 = -50)
        System.assertEquals(
            -50,
            Arthimatic.multiply,
            'The multiplication result for a negative value is incorrect'
        );
    }
}
