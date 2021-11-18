#!/bin/sh

set -ex

apt-get update && apt-get upgrade -y

# install rvm
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
usermod -aG rvm vagrant

sudo -i -u vagrant bash -c "rvm install 2.7.4"

# doesn't work if I run it from here, maybe because rvm setup requires a new login
# -> just run it in a ssh session yourself

# sudo -i -u vagrant bash -ex <<EOF
# cd ~/hpi-swt2
# gem install bundler
# bundler
# rails db:migrate RAILS_ENV=development && rails db:migrate RAILS_ENV=test
# EOF
