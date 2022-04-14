#Each user should have a .ssh folder within its Home folder. If it doesnt exit, it must be created
#For each user's ssh configuration, we will create an authorized_keys and add the
#beloe public key.

#!/bin/bash
userfile=$(cat names.csv)
PASSWORD=password

#To ensure that the user running this script has sudo privilege
    if[$(id -u) -eq 0]; then

#Reading the CSV file
    for user in $userfile;
    do
      echo $user
    if id "$user" &>/dev/null
    then
      echo "User Exist"
    else
# This will create a new user
    useradd -m -d /home/$user -s /bin/bash -g developers $user
    echo "New user created"
    echo
#This will create a ssh folder in the user home folder
   su - -c "mkdir ~/.ssh" $user
   echo "ssh directory created for new user "
   echo
#We need to set the user permission for the ssh dir
   su - -c "chmod 700 ~/.ssh" $user
   echo "user permission for .ssh directory set"
   echo
#This will create an authorized-key file
   su - -c "touch ~/.ssh/authorized_keys" $user
   echo "user permission for the Authorized key file set"
   echo

#We need to create and set public key for users in the server
   cp -R "/root/onboard/id_rsa.pub" "/home/$user/.ssh/authorized_keys"
   echo "Copied the Public key to New User Account on the server"
   echo
   echo
  
   echo "USER CREATED"

#Generate a password.
sudo echo -e "$PASSWORD\ln$PASSWORD" | sudo passwd "$user"
sudo passwd -x 5 $user
             fi
           done
       else
       echo "Only Admin Can Onboard A User"
       fi
