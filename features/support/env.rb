require 'spork'
 
Spork.prefork do
  require 'cucumber/rails'
  require 'factory_girl/step_definitions'
  require_relative 'knows_about_paths'

  Capybara.default_selector = :css

  World(KnowsAboutPaths)
end
 
Spork.each_run do
  ActionController::Base.allow_rescue = false
  
  DatabaseCleaner.strategy = :truncation
  
  # You may also want to configure DatabaseCleaner to use different strategies for certain features and scenarios.
  # See the DatabaseCleaner documentation for details. Example:
  #
  #   Before('@no-txn,@selenium,@culerity,@celerity,@javascript') do
  #     DatabaseCleaner.strategy = :truncation, {:except => %w[widgets]}
  #   end
  #
  #   Before('~@no-txn', '~@selenium', '~@culerity', '~@celerity', '~@javascript') do
  #     DatabaseCleaner.strategy = :transaction
  #   end
  #
  
  # Possible values are :truncation and :transaction
  # The :transaction strategy is faster, but might give you threading problems.
  # See https://github.com/cucumber/cucumber-rails/blob/master/features/choose_javascript_database_strategy.feature
  Cucumber::Rails::Database.javascript_strategy = :truncation

end
