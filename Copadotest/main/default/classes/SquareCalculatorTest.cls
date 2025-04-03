@IsTest
public class SquareCalculatorTest {
    
    @IsTest
    static void testCalculateSquare() {
        // Test positive number
        Decimal result = SquareCalculator.calculateSquare(5);
        System.assertEquals(25, result, 'Square of 5 should be 25');
        
        // Test negative number
        result = SquareCalculator.calculateSquare(-4);
        System.assertEquals(16, result, 'Square of -4 should be 16');
        
        // Test zero
        result = SquareCalculator.calculateSquare(0);
        System.assertEquals(0, result, 'Square of 0 should be 0');
    }
    
    @IsTest
    static void testCalculateArea() {
        // Test positive side
        Decimal area = SquareCalculator.calculateArea(4);
        System.assertEquals(16, area, 'Area of square with side 4 should be 16');
        
        // Test negative side
        try {
            SquareCalculator.calculateArea(-4);
            System.assert(false, 'Should have thrown an exception');
        } catch(SquareCalculator.SquareException e) {
            System.assertEquals('Side length cannot be negative', e.getMessage());
        }
    }
    
    @IsTest
    static void testCalculatePerimeter() {
        // Test positive side
        Decimal perimeter = SquareCalculator.calculatePerimeter(5);
        System.assertEquals(20, perimeter, 'Perimeter of square with side 5 should be 20');
        
        // Test negative side
        try {
            SquareCalculator.calculatePerimeter(-5);
            System.assert(false, 'Should have thrown an exception');
        } catch(SquareCalculator.SquareException e) {
            System.assertEquals('Side length cannot be negative', e.getMessage());
        }
    }
    
    @IsTest
    static void testCalculateDiagonal() {
        // Test positive side
        Decimal diagonal = SquareCalculator.calculateDiagonal(1);
        System.assertEquals(1.4142135623730951, diagonal, 'Diagonal of square with side 1 should be √2');
        
        // Test negative side
        try {
            SquareCalculator.calculateDiagonal(-1);
            System.assert(false, 'Should have thrown an exception');
        } catch(SquareCalculator.SquareException e) {
            System.assertEquals('Side length cannot be negative', e.getMessage());
        }
    }
}