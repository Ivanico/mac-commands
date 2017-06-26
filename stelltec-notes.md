# Notes about some random fixes and commands

### Sorting some issues with `run-devserver`

`brew update` <- to update homebrew

`brew install postgres` <- to install postgress

`sudo pip install awscli` <- to install Python AWS client

Because you might have issues with the above command when trying to run devserver, you should run this following command:

`pip install --upgrade --user awscli`

### Sorting issues with Docker with `run-devserver`

Sometimes running the server give me a Database connection error:

```
SQL State  : 08001
Error Code : 0
Message    : Connection to localhost:5432 refused. Check that the hostname and port are correct and that the postmaster is accepting TCP/IP connections.

Failed to connect to Postgres at jdbc:postgresql://localhost:5432/main. Will sleep for 5 seconds and try again.
Checking Postgres status at jdbc:postgresql://localhost:5432/main
Flyway 4.1.1 by Boxfuse

ERROR: 
Unable to obtain Jdbc connection from DataSource (jdbc:postgresql://localhost:5432/main) for user 'master': Connection to localhost:5432 refused. Check that the hostname and port are correct and that the postmaster is accepting TCP/IP connections.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
```

Starting with this set of responses:

```
Not linux: skipping dependency check
\e[33m INFO: If you get an error about jdbc connections, just remove the previous Docker containers using: \e[0m
\e[33m *docker stop 6eb61530afd4 && docker rm 6eb61530afd4* \e[0m
Reading db config ...
```

If you run into this issue, make sure to execute the command in the same error message indicated above:

`docker stop [xxx] && docker rm [xxx]`

That should sort the issue.

## Sorting issues with nodejs versioning

Sometimes the versioning on Node.js causes some issues when compiling with WebPack. In order to use a different versioning of Node, execute this command:

`nvm use [version ie. 8.1.2]`

`nvm ls` to list all versions installed on your machine.

`nvm alias default [version]` to set a specific version of Node as your default.

`nvm uninstall [version]` to uninstall versions of nodejs.

`nvm -h` to view the help pages.





