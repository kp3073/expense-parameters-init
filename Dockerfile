FROM   amazon/aws-cli
ADD    run.sh /run.sh
ENTRYPOINT ["bash", "-x", "/run.sh"]