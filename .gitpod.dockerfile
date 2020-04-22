FROM gitpod/workspace-full

USER root
RUN ["npm", "install", "-g", "http-server", "node-gyp", "node-pre-gyp", "fibers"]
RUN ["npm", "install", "-g", "now"]

RUN ["pip3", "install", "Flask", "pytesseract", "flask-cors"]

RUN curl https://releases.wekan.team/wekan-3.97.zip
RUN unzip wekan-3.97.zip

USER gitpod
