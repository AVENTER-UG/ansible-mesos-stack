# master

- Add support for netplan
- Replace "client_address" variable from inventory. The IP address would be resolved by interface.
- Add support for the mesos agent flag `docker_config`.
- Remove Deprecated Marathon
- Add TLS1.3 support
- Seperate zookeeper from manager
- Add variable for mesos docker socket path
- Deaktivate dhclient if it's installed
- Disable firewalld/ufw if it's installed
- Remove weave cni configa
- Add support for the new mesos cni support
- Check cgroups version only if the server belongs to the worker group.
- Remove custom docker systemd file. Will you the default one instead.
- Remove dns1 and dns2 from the dnsmasq config. Only use it via the system resolver.

# v0.21.0

- Change Zookeeper package name from "aventer-zookeeper" to "zookeeper" to prevent dpendencies problems with the
  debian package.
- Check existing of setenforce command before execute to prevent error messages.
- Add mesos_work_dir variable to custom mesos work directory.
- Add support of mesos attributes
- Update to Mesos Version 1.11.0-0.2.0
- Change Mesos CNI Plugin directory to the Containernetwork Plugin directory
- Add docker_data_root to change the data directory (default "/var/lib/docker")
- Add possibility to configure mesos-agent port range.
- Change Mesos-DNS default IPSource to "netinfo" and "host". 
- Seperate docker cronjobs from docker role.


# v0.20.0

- Add support for Debian based systems.
- CentOS7 is deprecated and would be removed in the future
- Update Mesos DNS to v0.8.2

# v0.19.0

- Add the possibility to install a docker engine at the manager server
- Update mesos-dns to version 0.8.1
- Add configurabel libprocess_ssl_cipher for mesos master and worker
- Fix enable/disable package update
- Update to zookeeper 3.6.3
- Exclude zookeeper update
- Generate Marathon java keystore
- Generate Mesos SSL certificate
- Remove Rexray
- Add SSL certificate into the executor env file

# v0.18.0

- Change mesos default principal to "mesos"
- Add posibility to configure multiple insecure registries
- Add docker_options variable to configure multiple opt parameter for docker
- Change Weave systemd to multi-user target
- Fix mesos-dns wrong user 
- Change dnsmasq role to install on all server

# v0.17.0

- Rename slave to agent. 
- Remove CSI Isolator. It's only usable with CIS Plugins
- Add update of /etc/hosts to add all mesos servers
- Disable zookeeper admin server.
- Fix CNI directory.
- Update Mesos to Version 1.11.1
- Change weave fastd to be configurable
- Add new SSL Parameters (https://reviews.apache.org/r/71497/ and https://reviews.apache.org/r/70795/t )
- Add Containernetworking Plugins
- Change CNI bin to the default plugins dir
- Update Mesos DNS to 0.8.0
- Change Rexray to RPM
- Fix small bugs

# v0.16.0

- Add more ansible tags for seperated roleout
- Remove unsupportet mesos-agent plugin
- Add work_dir to the agent
- Add csi isolator and plugin directory
- Update Apache Mesos to 1.11.0
- Change Weave Plugin Discovery
- Remove unusedNode Exporter

# v0.15.0

- Add ansible tags to reconfigure weave and dns
- Migrate to AVENTER Zookeeper Version 3.5.8
- Migrate to AVENTER Mesos DNS Version 0.7.0
- Migrate to AVENTER Marathon Version 1.10.17
- Change Marathon Systemd Config
- Change Mesos Master/Agent to configurable IP address
- Change Mesos Master/Agent/DNS to configurable IP address

# v0.14.0

- Add inventory example
- mark cadvisor as deprecated. cadvisor it to collecting metric of the docker engine and there containers. With the possibility to use container without docker or without the docker enginge, it makes no sense to keep it.
- change the variable consul_domain to dns_domain
- remove consul from dnsmasq
- Add weave cleanup script as workaround for https://github.com/weaveworks/weave/issues/3406
- Fix mesos dns group
- Fix metronome systemd
- Ansible Ignore errors of writing resolv.conf
- Add linux filemode to the rexray service
- disable Firewall
- Dev Mesos-Slave names to Mesos-Agent. Migrate old config.
- Migrate Apache Mesos to 1.10.0
- Install AVENTER RPM Repository


# v0.13.0

- Update apache mesos to version 1.9.0
- Enable weavedns for container dns and mark consul as deprecated.
- Mark Go Registrator as deprecated.
- rexray plugins are deprecated now. We move it into the standalone server package. If you still want, or have to use the docker plugin, please add it in the server-config.yaml playbook.
- Add weave and weavescope restart via systemd
- Remove mount/umount and mknod of the seccomp
- Add ceph-client binaries to rexray
- Update: Nodeexporter to version 0.18.2
- Update: Weave to 2.6.0
- Bugfix: Rexray systemd
- Disable fastd in weavescope per default. have to enable it manualy.
- Disable consul per defaults.
- Add multiple storage provider example to rexray
- Remove the old vagrant files


# v0.12.0

This will update Mesos to the version 1.8.1. Be sure its compatible with your framework.
This will update the docker engine to 19.03.1. The update will restart the dockerengine. Your contailers will be down during the update process of the worker. Please be sure, that you have a downtime for your system.
This will change the mesos dns config. If you want to resolv the host ip, Please use ".slave.mesos".

- Update apache mesos to version 1.8.1
- Enable seccomb
- Update Docker Engine to 19.03.1
- Change Docker storage driver from devicemapper to overlay2
- deactivate docker live restore
- add container dns to mesos-slave
- remove google dns from resolv.conf
- change mesos-dns to give out per default the containers ip
- Bugfix: Mesos-DNS enable SSL is working now

# v0.11.1

This will change the way how to load the configuration of mesos libs. If you add your own config to the file ```/etc/mesos-slave/modules``` please migrate the content.

- Disable auto weavescope restart via systemd
- Add metronome parameters
- Change Registrator and CAdvisor to systemd
- Fix Mesos CNI missing type in weave
- Fix missing agent http credentials
- Fix set mesos-agent hostname after rerun
- Set MESOS_MASTER env variable. Needed for some plugin.
- Disable Docker update
- Change Mesos Modules from single file to config folder
- Add but not activate seccomp mesos isolator, its only workign with mesos 1.8.1
- Add USER env to mesos config to fix the "invalid-user" in the log files
- Add basic SSL support for Mesos. You can enable it with the ansible group_vars ```libprocess_enable_ssl: "true"```
- Enable SSL in Marathon, Mesos-DNS, Metronome. You can enable it with the ansible group_vars ```libprocess_enable_ssl: "true"```
- Seperate Zookeeper from Mesos-Master role
- DEPRECATED: Graylog, Cadvisor, Grafana, Prometheus, Prometheus Nodeexporter, MongoDB. All these will move into a seperated playbook.

# v0.11.0

This will update weave! It can be, that the docker daemon will restart after the weave update.

- Activate Metronome
- Chronos is deprecated and will not be installed. Use Metronome instead.
- Add Metronome User
- Add Mesos-DNS User
- Add Marathon User
- Enable Marathon features vips,task_killing,external_volumes,gpu_resources
- Change Mesos-DNS Port for a future compatibility to DC/OS
- Performance optimation of Mesos Master
- Extend Mesos Slave isolation
- Change deprecated parameters of mesos
- Add authentication to zookeeper
- Add weave cni to mesos
- Update consul to v1.5.3
- Update weave to v2.5.2
- Update weavescop to v1.11.3
- Bugfix weave systemd! Don't restart by systemd.
  
# v0.10.0

With this Version we will include Mesos-DNS for Service Discovery of Mesos tasks. Its not a replace of consul. Consul will resolve the weave ip address inside the container. Mesos-DNS will resolv the IP address of the host where the task is running.

- Update Marathon to v1.8.218
- Add Mesos-DNS v0.7.0
- Remove mesos.master item from the /etc/hosts file. The resolv would be via Mesos-DNS
