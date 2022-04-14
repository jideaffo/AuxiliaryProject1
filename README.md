# AuxiliaryProject1

## AUX PROJECT 1: SHELL SCRIPTING
It is time to start getting a feel of how to automate some work using Shell Scripts.

In this project, you need to onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

1. Create the project folder called Shell

`mkdir Shell`

Move into the Shell folder

`cd Shell`

2. Create a csv file name names.csv

`touch names.csv`

Open the names.csv file

`vim names.csv`

Insert some random names into it. (One name per line)


NOTE:
1. The script you created should read the CSV file, create each user on the server, and add to an existing group called developers (You will need to manually create this group ahead).

2. Ensure that your script will first check for the existence of the user on the system, before it will attempt to create that it.

3. Ensure that the user that is being created also has a default home folder

4. Ensure that each user has a .ssh folder within its HOME folder. If it does not exist, then create it.

5. For each user’s SSH configuration, create an authorized_keys file and add ensxure it has the public key of your current user.


![alt text](./images/copyFileFromLocalPCtoCloudServer.PNG)


Before Deploying your script, you will need to update your current user with the correct public key and private key.
In your current home directory change directo .ssh folder

`cd .ssh`


create a file for the public key

`touch id_rsa.pub`

open the file using your favorite editor and paste in the public key

`vi id_rsa.pub`

create a file for your private key

`touch id_rsa`

open the file using your favorite editor and paste in the private key

`vi id_rsa`



Test a few of the users randomly, and ensure that you are able to connect to the server using the private key and the public key.

![alt text](./images/OnlyAdminCanOnlyboardUser.PNG)


![OnlyUbuntuUser](./images/OnlyUbuntuUserExist.PNG)


![AfterTheScript](./images/UsersAfterTheScript.PNG)


![NewUsersAndGroups](./images/NewUsers.PNG)



![Users](./images/users.PNG)


![NewUserLogin](./images/loginWithANewUser.PNG)


![NewUserAaccessToUbuntu](./images/NewUser1.PNG)


LOGIN WITH A NEWLY CREATED USER

![FilesInTheUserDirectory](./images/FilesInTheUsersDir.PNG)


# LOGIN WITH ONE OF THE NEW USER 
![AnotherUser](./images/AnotherUser.PNG)


