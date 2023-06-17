set :output, './log/cron.log'

every 1.day, at: '11:58 pm' do
  rake "set_tasks_status:set_tasks_to_delay"
end
