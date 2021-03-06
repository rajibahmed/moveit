## Moveit Application Installer

This project has two submodules that will installed and run as container. 
The move-it api is written with RubyOnRails, and moveit-ui is written with VueJs.

### WithOut docker 

Just pull the latest code for moveit-api and moveit-ui

on moveit-ui directory

```sh
npm install && npm run dev
```

on move-api directory

```sh
bundle install
rake db:migrate 
rails s 
```

### With docker 
Required:

 * Docker latest
 * NodeJs latest
 * unsed port 3000 and 8080

#### Tested on OSX 

Setup:

This command will create all the necessary containers and open the web browser.

```sh
 $ ./setup 
```

For running the already created containers

```sh
$ rm -rf moveit-api/tmp && docker-compose up 
```

Application should running on [http://localhost:8080](http://localhost:8080) if you are using latest docker.
Or you need to access it through your docker-machine's ip.

## Troubleshooting

You may find sometimes the setup script is not working
Throwing errors unable to create api and ui container.

Temp solution

```sh
$ rm -rf moveit-api/tmp && docker-compose up api ui
```
Removing all moveit container 

```sh
$ docker stop $(docker ps -aq)
$ docker rmi -f  $(docker images | grep moveit | awk '{print $3}')
$ docker volume rm $(docker volume ls -qf dangling=true)
```
