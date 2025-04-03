public class SquareCalculator {
    
    // Calculate square of a number
    public static Decimal calculateSquare(Decimal number1) {
        return number1 * number1;
    }
    
    // Calculate area of a square
    public static Decimal calculateArea(Decimal side) {
        if(side < 0) {
            throw new SquareException('Side length cannot be negative');
        }
        return side * side;
    }
    
    // Calculate perimeter of a square
    public static Decimal calculatePerimeter(Decimal side) {
        if(side < 0) {
            throw new SquareException('Side length cannot be negative');
        }
        return 4 * side;
    }
    
    // Calculate diagonal of a square using sqrt
    public static Decimal calculateDiagonal(Decimal side) {
        if(side < 0) {
            throw new SquareException('Side length cannot be negative');
        }
        return side * Math.sqrt(2);
    }
    
    // Custom exception class
    public class SquareException extends Exception {}
}