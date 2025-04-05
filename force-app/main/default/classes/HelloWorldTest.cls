// HelloWorldTest.cls
@isTest
public class HelloWorldTest {
    @isTest 
    static void testSayHello() {
        // Arrange & Act
        String result = HelloWorld.sayHello();
        
        // Assert
        System.assertEquals('Hello World!', result, 'The message should be Hello World!');
    }
}