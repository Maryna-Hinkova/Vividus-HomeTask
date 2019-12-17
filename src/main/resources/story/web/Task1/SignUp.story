Description: Story to create an account on trello.com;
Lifecycle:
Examples:
|email                                                         |password                                |
|DaenerysTargaryen#{generate(Address.buildingNumber)}@gmail.com|#{generate(Internet.password '12','16')}|
|JonSnow#{generate(Address.buildingNumber)}@gmail.com		   |#{generate(Internet.password '12','16')}|
|TheonGreyjoy#{generate(Address.buildingNumber)}@gmail.com	   |#{generate(Internet.password '12','16')}|
|AryaStark#{generate(Address.buildingNumber)}@gmail.com		   |#{generate(Internet.password '12','16')}|
|JaimeLannister#{generate(Address.buildingNumber)}@gmail.com   |#{generate(Internet.password '12','16')}|


Scenario: Open and submit SignUp form
Given I am on the main application page
When I enter `<email>` in field located `By.name(email)`
When I click on element located `By.xpath(//button[@type='submit'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.id(signup-submit)`
Then the page with the URL containing 'https://id.atlassian.com/verify-email' is loaded
