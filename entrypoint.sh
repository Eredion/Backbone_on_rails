#!/bin/sh

# It is used to exit immediately if a command exits with a non-zero status.
set -e

cd /backbone_on_rails

#Database creation
rails db:drop && rails db:create && rails db:migrate && rails db:seed

#starts rails server
rails server -b 0.0.0.0
