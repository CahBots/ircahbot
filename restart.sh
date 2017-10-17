echo "Pulling that stable code"
git pull origin master

echo "Updating dependencies"
bundle update

echo "Booting up the bot"
bundle exec ruby code.rb

