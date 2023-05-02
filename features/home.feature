Feature: Home

        @smoke
        Scenario:Verify Home pag
            Given I open application
             Then I verify home page

        @regression
        Scenario:Verify Payment page
            Given I open application
              And I login with valid credentails
             Then I verify username exists on Welcomepage