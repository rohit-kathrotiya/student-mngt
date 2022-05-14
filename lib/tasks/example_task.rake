namespace :example_task do
    desc "Greeting message"

    task greet_to_user: :environment do
        puts "Greeting message to user from system"
    end

    task say_bye_to_user: :environment do
        puts "Now its time to say bye..!"
    end
end