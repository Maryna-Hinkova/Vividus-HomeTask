Scenario: Open SignIn form on main page
Given I am on the main application page
When I click on element located `By.xpath(//nav[@class='navbar py-3']//a[@href='/login'])`
When I login as a registered user
When I click on element located `By.id(login)`
Then the page with the URL 'https://trello.com/testmaryna/boards' is loaded

Scenario: UI controls validation
When I click on element located `By.xpath(//nav[@class='home-left-sidebar-container']//a[@href='/templates'])`
When the condition '#{eval("<a>"=="#")}' is true I do
|step|
|When I click on element located `By.xpath(//div[@class='content-all-boards']//a[@href='#'])`|
|Then number of elements found by `By.xpath(//div[@class='pop-over is-shown'])` is equal to `1`|
When I click on element located `By.xpath(//span[@name='house'])`
When the condition '#{eval("<a>"=="https://trello.com/templates#")}' is true I do
|step|
|When I click on element located `By.xpath(//div[@class='content-all-boards']//a[@href='#'])`|
|Then number of elements found by `By.xpath(//div[@class='pop-over is-shown'])` is equal to `1`|
