@isTest
public class HelloPrinterTest {
    @isTest
    static void testSayHello() {
        // Arrange
        HelloPrinter printer = new HelloPrinter();
        
        // Act
        Test.startTest();
        String result = printer.sayHello();
        Test.stopTest();
        
        // Assert
        System.assertEquals('Hello', result, 'The greeting should be Hello');
        
        // Verify debug log
        System.assert(ApexPages.getMessages().size() == 0, 'There should be no error messages');
    }
}