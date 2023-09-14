FROM node

RUN npm i -g @vev/cli

COPY deploy.sh /.vev/
RUN chmod +x /.vev/deploy.sh

ENTRYPOINT ["/.vev/deploy.sh"]
