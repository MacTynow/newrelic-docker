FROM ruby:2.2.2-slim
MAINTAINER mactynow

ENV NEW_RELIC_LICENSE_KEY 
ENV NEW_RELIC_HOSTNAME 
ENV NEW_RELIC_DEBUG verbose
RUN rm -rf /tmp/*
ADD nrsysmond /
ADD nrsysmond.cfg /
CMD /nrsysmond -c /nrsysmond.cfg -n $NEW_RELIC_HOSTNAME \
-d $NEW_RELIC_DEBUG -l /dev/stdout -f