FROM 42wim/matterbridge:latest 

COPY start-matterbridge.sh /start-matterbridge.sh 
RUN chmod +x /start-matterbridge.sh
