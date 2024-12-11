FROM nginx:mainline-alpine-perl
#desc

COPY jenkins_demo/test.txt /www/html/test.txt
