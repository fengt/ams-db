namespace :migrate_log do
  desc "Make migration with output"
  task show_sql: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Rake::Task['db:migrate'].invoke
  end
  
end
