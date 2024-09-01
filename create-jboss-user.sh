#!/usr/bin/expect -f

# Define variables
#set jboss_bin_dir "/mnt/d/WSLUBUNTU/ansible/Jboss_installation/jboss-eap-7.4/bin"
set jboss_bin_dir [lindex $argv 0]
set username "jboss"
set password "jboss@123"
#set secret_output_file "/mnt/d/WSLUBUNTU/ansible/Jboss_installation/jboss_secret_output.txt"
#set log_file "/mnt/d/WSLUBUNTU/ansible/Jboss_installation/jboss_user_creation.log"
set log_file [lindex $argv 1]
# Start the add-user.sh script
spawn sh $jboss_bin_dir/add-user.sh

# Log all output to a file
log_file $log_file

# Handle the prompts
expect "What type of user do you wish to add?"
send "a\r"

expect "Username :"
send "$username\r"

expect "Password :"
send "$password\r"

expect "Re-enter Password :"
send "$password\r"

expect "What groups do you want this user to belong to?"
send "\r"

expect "Is this correct yes/no?"
send "yes\r"

expect "Is this new user going to be used for one AS process to connect to another AS process?"
send "yes\r"

# Wait for the command to complete
expect eof

# Close the log file
log_file


