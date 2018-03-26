FROM registry.access.redhat.com/jboss-datagrid-7/datagrid71-openshift:1.2-6

# This Dockerfile is used as a demonstration of setting TRACE level logging for 
# troubleshooting clustering within JBoss Datagrid

# Add the necessary files into the new JBoss Datagrid container
COPY extensions /opt/datagrid/extensions
