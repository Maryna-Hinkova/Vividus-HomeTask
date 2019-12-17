Scenario: Open SignIn form on main page
Given I am on the main application page
When I click on element located `By.xpath(//nav[@class='navbar py-3']//a[@href='/login'])`
When I login as a registered user
When I click on element located `By.id(login)`
Then the page with the URL 'https://trello.com/testmaryna/boards' is loaded
