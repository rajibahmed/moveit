## Moveit Application Installer

This project has two submodules that will installed and run as container. 
The move-it api is written with RubyOnRails, and moveit-ui is written with VueJs.

Required:

 * Docker
 * NodeJs

#### Tested on OSX 

Setup:

This command will create all the necessary containers and open the web browser.

```sh
 $ ./setup
```

Application should running on [http://localhost:8080](http://localhost:8080) if you are using latest docker.
Or you need to access it through your docker-machine's ip.
