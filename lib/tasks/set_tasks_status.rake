namespace :set_tasks_status do
  desc "Set all tasks as ‘delayed’ at the end of the day"
  task :set_tasks_to_delay => :environment do
    TasksController.set_tasks_to_delay
  end
end
