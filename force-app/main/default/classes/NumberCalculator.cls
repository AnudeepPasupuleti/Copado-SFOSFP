public class NumberCalculator {
    
    // Method to calculate square of a number
    public static Decimal calculateSquare(Decimal fnumber) {
        return fnumber * fnumber;
    }
    
    // Method to calculate square with error handling
    public static Decimal calculateSquareWithValidation(Decimal fnumber) {
        try {
            if(fnumber == null) {
                throw new CalculatorException('Input number cannot be null');
            }
            return fnumber * fnumber;
        } catch(Exception e) {
            System.debug('Error calculating square: ' + e.getMessage());
            throw new CalculatorException('Error calculating square: ' + e.getMessage());
        }
    }
    
    // Custom exception class
    public class CalculatorException extends Exception {}
    
    // Test method to demonstrate usage
    public static void testCalculateSquare() {
        Decimal tnumber = 5;
        Decimal result = calculateSquare(tnumber);
        System.debug('Square of ' + tnumber + ' is: ' + result);
    }
}
