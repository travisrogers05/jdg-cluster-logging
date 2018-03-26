# jdg-cluster-logging

### This is an example method for adding logging categories to a JBoss Datagrid container based application.



1.  Install imagestream (jdg7-trace-imagestream.yml) into current namespace.
2.  Install buildconfig (jdg7-trace-buildconfig.yml) into current namespace.
3.  Perform build.
4.  Install a template or alter existing application deploymentconfig to use new trace enabled imagestream.  Example template can be retrieved from https://github.com/jboss-openshift/application-templates/blob/ose-v1.4.8-1/datagrid/datagrid71-basic.json.  For this example, change the DeploymentConfig to Spec->triggers->from->"name": "jdg7-trace:1.0".  Also, change the Spec->template->spec->containers->"image": "jdg7-trace".  This will have the deployment use the modified JDG image.
5.  Create a new application using the template from #5 or redeploy your existing application.
6.  Verify trace level logging exists.
7.  Scale pods > 1.
8.  Verify pods have clustered by reviewing pod logs or Java console (Attributes->jgroups->channel->cluster->View)
