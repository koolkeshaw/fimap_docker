#Build a docker image containing fimap 
docker build -t fimap . 

#Run fimap docker in interactive mode. 
#Added bash as we need commandline access to container to run fimap

docker run -it --rm fimap bash

#Inside container run below
cd fimap/src/

#Run fimap as usual
