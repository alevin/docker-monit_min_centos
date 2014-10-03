FROM alevin/monit_base_centos
MAINTAINER Alex Levin

##  Customize monit

ENV MAILSERVER mailer
ENV ALERT  address@example.com
ENV ALLOW admin:secretpassword
RUN printf "set mailserver $MAILSERVER\n set alert $ALERT\n\nset httpd port 2812 and\n    allow $ALLOW\n\n" > /etc/monit/conf.d/monitor

EXPOSE 2812

CMD ["/usr/bin/monit", "-I","-c/etc/monit/monitrc"]
