namespace :deploy do
  HEROKU_INFO = [
    {:app => "kutorable", :remote => "kt_heroku"},
  ]

  desc "Deploy to all heroku apps"
  task :heroku => :environment do
    branch = `git branch`
    if branch.match(/\* master/)
      command = ""
      command += "git push #{HEROKU_INFO.first[:remote]} master;"
      command += "heroku run rake db:migrate --app #{HEROKU_INFO.first[:app]};"
      command += "heroku run rake db:seed --app #{HEROKU_INFO.first[:app]};"

      HEROKU_INFO.each do |info|
        command += "git push #{info[:remote]} master;"
        command += "heroku restart #{info[:remote]} --app #{info[:app]};"
      end

      puts command
    else
      puts "You're on the wrong branch"
      puts "Only deploy on the master branch"
    end
  end
end
