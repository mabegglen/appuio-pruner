FROM registry.access.redhat.com/rhel7:latest

LABEL io.k8s.display-name="APPUiO Pruner" \
      io.k8s.description="The APPUiO Pruner prunes old builds, deployments and images."

RUN cd /usr/local/bin && \
    curl -O https://console.appuio.ch/console/extensions/clients/linux/oc

COPY pruner.sh /tmp/

ENTRYPOINT ["/tmp/pruner.sh"]
