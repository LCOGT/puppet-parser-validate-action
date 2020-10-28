FROM centos:8

LABEL name="puppet-parser-validate-action"
LABEL repository="https://github.com/LCOGT/puppet-parser-validate-action"
LABEL homepage="https://github.com/LCOGT/puppet-parser-validate-action"

LABEL "com.github.actions.name"="puppet-parser-validate-action"
LABEL "com.github.actions.description"="GitHub Action to run 'puppet parser validate' syntax check"
LABEL "com.github.actions.icon"="share-2"
LABEL "com.github.actions.color"="orange"

LABEL "maintainer"="Las Cumbres Observatory <https://lco.global/>"

RUN yum -y install http://yum.puppetlabs.com/puppet5/el/8/x86_64/puppet-agent-5.5.20-1.el8.x86_64.rpm
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
