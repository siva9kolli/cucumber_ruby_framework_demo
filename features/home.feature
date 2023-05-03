Feature: Home

        Background:
            Given I open application
        
        @smoke
        Scenario:Verify Home pag
            Given I open application
             Then I verify home page

        @regression
        Scenario:Verify Payment page
            Given I open application
              And I login with valid credentails
             Then I verify username exists on Welcomepage

        @data
        Scenario:Verify Payment page
            Given I open application
              And I login with valid "SeleniumTest" and "Test@123"
             
        @examples
        Scenario Outline:Verify Payment page
            Given I open application
              And I login with valid "<username>" and "<password>"

        Examples:
                  | username     | password |
                  | SeleniumTest | Test@123 |
                  | AppiumTest   | Test@123 |


        @direct_data
        Scenario Outline:Verify Payment page
            Given I open application
              And I verify valid user name present
              And I verify valid user image present
              And I verify valid menu items present
              And I verify valid client links present
              And I verify valid login_form present


        @using_bg
        Scenario:Verify Payment page
              And I login with valid credentails
             Then I verify username exists on Welcomepage

        
        @using_steps
        Scenario:
             When I verify end-to-end flow of the application