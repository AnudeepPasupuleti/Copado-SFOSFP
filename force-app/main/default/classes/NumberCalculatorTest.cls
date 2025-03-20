@isTest
private class NumberCalculatorTest {
    
    @isTest
    static void testCalculateSquare() {
        // Test positive number
        Decimal result1 = NumberCalculator.calculateSquare(5);
        System.assertEquals(25, result1, 'Square of 5 should be 25');
        
        // Test negative number
        Decimal result2 = NumberCalculator.calculateSquare(-4);
        System.assertEquals(16, result2, 'Square of -4 should be 16');
        
        // Test zero
        Decimal result3 = NumberCalculator.calculateSquare(0);
        System.assertEquals(0, result3, 'Square of 0 should be 0');
        
        // Test decimal number
        Decimal result4 = NumberCalculator.calculateSquare(2.5);
        System.assertEquals(6.25, result4, 'Square of 2.5 should be 6.25');
    }
    
    @isTest
    static void testCalculateSquareWithValidation() {
        // Test null value
        try {
            NumberCalculator.calculateSquareWithValidation(null);
            System.assert(false, 'Should have thrown an exception');
        } catch(NumberCalculator.CalculatorException e) {
            System.assertEquals('Input number cannot be null', e.getMessage());
        }
    }
}