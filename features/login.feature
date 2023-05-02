Feature: Login

        @smoke
        Scenario:Verify login page
            Given I open application
             Then I login with valid credentails

        @regression
        Scenario:Verify Welcome page
            Given I open application
              And I login with valid credentails
             Then I verify username exists on Welcomepage
