namespace :set_tasks_status do
  desc "Set all tasks as ‘delayed’ at the end of the day"
  task :set_tasks_to_delay => :environment do
    session = ActionDispatch::Integration::Session.new(Rails.application)
    header = if Rails.env.production?
      "https://heroku.com"
    else
      "http://127.0.0.1:3000/"
    end
    session.get(header + "api/tasks/daily-sync")
    end
end
