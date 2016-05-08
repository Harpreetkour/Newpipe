require 'calabash-android/cucumber'
require 'calabash-android/operations'

World(Calabash::Android::Operations)

ENV['TEST_APP_PATH'] = test_server_path(ENV['APP_PATH'])

AfterConfiguration do
  require 'calabash-android/calabash_steps'
end