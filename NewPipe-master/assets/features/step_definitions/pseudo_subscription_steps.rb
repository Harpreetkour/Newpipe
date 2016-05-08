require 'calabash-android/calabash_steps'

Given (/^I click on the search button for the first time$/) do
      unless $app_installed
         reinstall_apps
      end
      start_test_server_in_background
      touch("* id:'search_button'")
      end

Given (/^I click on the search button$/) do
        touch("* id:'search_button'")
      end
Then (/^I press search$/) do
       press_enter_button
     end
Then (/^I click on the subscribe button$/) do
        touch("* id:'btn_subscribe'")
      end

Given (/^I click on the unsubscribe button$/) do
        touch("* id:'btn_subscribe'")
      end
When (/^I goto NewPipe$/) do
        start_test_server_in_background
      end
