### Node Express Socket Sandbox Project for REPLIT

This is an barebones node, express & socket sandbox project for use (principally) with REPLIT.

## Setup your project
Folk, clone or import this project to a new GitHub repo.
Open REPLIT and select 'Create a Real', then 'Import from GitHub'
Copy your newly created GitHub repo into REPLIT's GitHub URL and select 'Import from GitHub'.

### Initialise the structure
Once your REPLIT project is ready, open the terminal window and execute the BASH script 
```
./setup.sh new # the new argument sets up 'new' project conditions
```

### New Project Conditions 
This will ask you three questions 'authors name', 'email address' and 'author url', the data entered will be used to create a bespoke MIT license, and code of conduct for the project.  
This will also initialise node with the author's details and create a general folder structure for your project.
```
| app
| -----| server
| -----| server | index.js
| -----| client
| -----| client | index.js
| -----| scripts
| -----| scripts | provision.js
| -----| scripts | db.js
| -----| config 
| -----| config | index.js
| -----| config | server.js
``` 

Your default entry point (package.json/main) will be set to: 
```
/app/server/index.js
```

The environmental variable NODE_ENV will be set to 'development'

