## This repo is based to setup a dockerfile for Mondrian 4.7.0.0-12
```

Based on tomcat slim (deb) in official docker repo: 
https://hub.docker.com/_/tomcat/https://hub.docker.com/_/tomcat
the Dockerfile add a mondrian 4.7.0.0-12 modified by myself to fit 
all the corrects files need to run a functionnal Mondrian

```

#### Why don't dowload from official sources ?
```

In the official sources, the documents is not really clear: 
they ask you to download .zip bundle but the latests versions includes only 
the src folder not the others dependencies covered in the 3.5 version, (compressed into a .jar).
So, I unpacked the 3.5, added the 4.7 src files and uploaded it into the docker.
```

#### How to manage the DB Connections ?
```

In the documentations they ask you to modify mondrian.properties into the mondrian folder and the web.xml.
But, in fact you only need to modify the .proprties, the xml file is to set the user and password... 
And theses informations can be put into the .properties .
In the .properties file, you can mmodify the Provider database, just see the comments of mondrian's team.

```

