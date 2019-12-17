Description: Story to create an account on trello.com;

Scenario: Open and submit SignUp form
Given I am on the main application page
When I enter `test.maryna@yandex.ru` in field located `By.name(email)`
When I click on element located `By.xpath(//button[@type='submit'])`
When I enter `Test Maryna` in field located `By.xpath(//input[@id='name'])`
When I enter `test12345!` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.id(signup)`
When I find >= '1' elements by By.xpath(//p[@class='error-message']) and for each element do
|step|
|When I click on element located `By.xpath(//span[@class='bottom-form-link'])`|
|Then the page with the URL containing 'https://trello.com/login' is loaded|
