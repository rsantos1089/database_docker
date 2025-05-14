## WINDOWS
ssh-keygen -t rsa -b 4096 -C "rudye@corp.org" -f .ssh/corp
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/corp

## MAC
#create ssh
ssh-keygen -t rsa -C "rudye@corp.org" -f .ssh/corp
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/corp

