FROM nginx:mainline-alpine3.20-perl
#desc

COPY jenkins_demo/test.txt /www/html/test.txt
