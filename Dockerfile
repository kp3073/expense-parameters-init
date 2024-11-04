FROM   amazon/aws-cli
ADD    run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]