mscgen in a container
=====================

This container is based of alpine 3.4 purely for the purposes of keeping it lightweight. Once you clone the repo run the docker build.
Capture the conatiner ID and execute the following command to generate a sample.png

```
 docker run -it -v /Users/nayakpr/projects/personal/mscgen/data:/data 3d2cede24354 ./bin/mscgen -i /data/sample -T png
```

The above command gives you a sample.png file. To generate your own message sequence charts drop your msc file with instructions in the data directory of the repo and just fire above command. Please change the name on input file.
You can also create an alias for it.

docker-compose.yml does nothing at the moment.