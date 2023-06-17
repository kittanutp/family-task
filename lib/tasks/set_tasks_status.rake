namespace :set_tasks_status do
  desc "Set all tasks as ‘delayed’ at the end of the day"
  task :set_tasks_to_delay => :environment do
    session = ActionDispatch::Integration::Session.new(Rails.application)
    base_url = Rails.application.config.hosts
    session.get(base_url + "api/tasks/daily-sync")
    end
end
