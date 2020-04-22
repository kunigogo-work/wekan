FROM gitpod/workspace-mongodb

USER root
RUN ["npm", "install", "-g", "http-server", "mongodb", "node-gyp", "node-pre-gyp", "fibers"]
RUN ["npm", "install", "-g", "now"]

USER gitpod
RUN curl -o wekan.zip https://releases.wekan.team/wekan-3.97.zip
RUN unzip wekan.zip
RUN cd /home/gitpod/bundle/programs/server
RUN npm install


