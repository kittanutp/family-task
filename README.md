# README

Technical Challenge Project: to-do style app for a family that lets you create family members and create new tasks for them, mark tasks as complete, and view all tasks on a both individual family member basis or for the entire family


* Ruby version
    ruby 3.2.2
    rails 7.0
* Database creation and init
    /bin/rails db:migrate

* Deployment instructions - Add cron job when deploy
    - Inside the Heroku Scheduler dashboard, add a new job with the following command - Add rake task_name:my_task
