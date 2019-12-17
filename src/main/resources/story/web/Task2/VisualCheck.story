GivenStories:story/web/Task2/SignUpTask2.story

Scenario: Open Login page from main application page
When I enter `test.maryna@yandex.ru` in field located `By.id(user)`
When I enter `test12345!` in field located `By.id(password)`
When I click on element located `By.id(login)`
Then the page with the URL 'https://trello.com/testmaryna/boards' is loaded
And number of elements found by `By.xpath(//button[@title='Test Maryna (testmaryna)'])` is equal to `1`

Scenario: Navigate to 'To Do List' board and use visual check
When I click on element located `By.xpath(//div[@class='boards-page-board-section mod-no-sidebar'][1]//div[@title='To Do List'])`
When I COMPARE_AGAINST baseline with `toDoList`

Scenario: Return to Boards page and use visual check
When I click on element located `By.xpath(//span[@name='house'])`
When I COMPARE_AGAINST baseline with `boardsPage`

Scenario: Navigate to Templates page and use visual check
When I click on element located `By.xpath(//nav[@class='home-left-sidebar-container']//a[@href='/templates'])`
When I COMPARE_AGAINST baseline with `templatePage`

Scenario: Navigate to 'Town Hall Meetings' page and use visual check
When I click on element located `By.xpath(//a[@href='/templates/business/town-hall-meetings-K0ZOiQ7U'])`
When I COMPARE_AGAINST baseline with `townhallMeetings`

Scenario: Navigate to 'View Template' board page and use visual check
When I click on element located `By.xpath(//a[@href='https://trello.com/b/K0ZOiQ7U'])`
When I COMPARE_AGAINST baseline with `viewTemplate`
