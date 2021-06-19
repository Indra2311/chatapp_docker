FROM nginx
#RUN rm /etc/nginx/sites-available/default
#RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/conf.d/default.conf
COPY nginxserver.conf /etc/nginx/conf.d
#RUN ln -s /etc/nginx/sites-available/nginxserver.conf /etc/nginx/sites-enabled/
EXPOSE 80
RUN service nginx start
