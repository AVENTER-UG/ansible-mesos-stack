# v0.11.1

- Disable auto weavescope restart via systemd
- Add metronome parameters
- Change Registrator and CAdvisor to systemd
- Fix Mesos CNI missing type in weave

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
