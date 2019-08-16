# v0.11.1

This will change the way how to load the configuration of mesos libs. If you add your own config to the file ```/etc/mesos-slave/modules``` please migrate the content.

This will enable SSL communication for the mesos agents and mesos server. The verification of the ssl certificate is disabled (default). If you want to disable SSL, please add ```libprocess_enable_ssl: "false"``` to your group_vars inventory configuration. More information to Mesos and SSL: http://mesos.apache.org/documentation/latest/ssl/

- Disable auto weavescope restart via systemd
- Add metronome parameters
- Change Registrator and CAdvisor to systemd
- Fix Mesos CNI missing type in weave
- Fix missing agent http credentials
- Fix set mesos-agent hostname after rerun
- Set MESOS_MASTER env variable. Needed for some plugin.
- Disable Docker update
- Change Mesos Modules from single file to config folder
- Add seccomp mesos isolator
- Add USER env to mesos config to fix the "invalid-user" in the log files
- Add basic SSL support for Mesos
- Seperate Zookeeper from Mesos-Master role

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
