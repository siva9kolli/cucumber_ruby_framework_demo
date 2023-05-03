Given(/^I open application$/) do
    puts "I open application"
end

Then (/^I login with valid credentails$/) do
    p "I login with valid credentails"
end

Then (/^I verify username exists on Welcomepage$/) do
    pp "I verify username exists on Welcomepage"
end

Then('I verify home page') do
    p "I verify home page"
end

Then(/^I login with valid "(.*?)" and "(.*?)"$/) do |user, pwd|
    puts "Username :: #{user}"
    puts "Password :: #{pwd}"
end

Then(/^I verify valid (user name|user image|menu items|client links|login_form) present$/) do |user_details|
        puts "User details are :: #{user_details}"
end

Then(/^I verify end-to-end flow of the application$/) do
    steps %Q{
        And I login with valid credentails
        Then I verify username exists on Welcomepage
    }

    puts "Application is tested"
end