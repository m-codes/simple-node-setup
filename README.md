# simple-node-setup
**How to use:**
```
# Step 1 - Clone this repository
git clone https://github.com/m-codes/simple-node-setup

# Step 2 - Change directory and change permissions on the file
cd simple-node-setup
chmod +x simple-node-setup.sh

# Step 3 - Run the script
./simple-node-setup.sh "myNewDirectory"
```

**Please include your directory name between quotes**

The script will execute and create a directory with the given name
as well as .js file and a .test.js file.

Your .test.js file will be parsed with a template test.

Finally the script will run jest which will return green and exit :)

You can then move the .sh file anywhere you want to create a project and run the command on Step 3!

Here's a screenshot of what you will get

<img width="1043" alt="simple-node-setup" src="https://user-images.githubusercontent.com/32762403/207580633-ea31b586-9ebe-4b6d-b70a-ecbe2e6339c1.png">
