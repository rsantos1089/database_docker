#create ssh
ssh-keygen -t rsa -C "rudye@iadb.org" -f .ssh/iadb
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/iadb

