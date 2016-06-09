FROM tmp-payara

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER payara

ENV PAYARA_HOME=/opt/payara/payara41 \
    PATH=$PATH:$PAYARA_HOME/bin

WORKDIR $PAYARA_HOME

# Ports being exposed
EXPOSE 4848 8080 8181

# Start asadmin console and the domain
CMD ["sh", "-c", "$PAYARA_HOME/bin/asadmin start-domain -v payaradomain"]
