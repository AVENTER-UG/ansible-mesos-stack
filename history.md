# Past Versions

## v0.13.0

### Manager node


| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.9.0        | Mesos Masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                   | JAVA dependencies to Marathon      |
| Nodeexporter 0.18.2| Metric Exporter                   | Binary

### Worker node

| Software version   | Role                              | Install type |
| ------------------ | :-------------------------------: | :----------: |
| Mesos 1.9.0        | Mesos Agent                       | RPM          |
| Docker 19.03.1-ce  | Docker engine                     | RPM          |
| Weave 2.6.0        | Container networking              | Docker image |
| Weavescope 1.11.3  | Container Management              | Docker image |
| DNSMasq 2          | Container DNS                     | RPM          |
| CAdavisor (deprecated)         | Docker engine monitoring          | Docker image |
| Rexray 0.11.4      | Persistant Storage                | RPM          |
| Nodeexporter 0.18.2| Metric Exporter                   | Binary



## v0.12.0

### Manager node

This will change the way how to load the configuration of mesos libs. If you add your own config to the file ```/etc/mesos-slave/modules``` please migrate the content.

This will enable SSL communication for the mesos agents and mesos server. The verification of the ssl certificate is disabled (default). If you want to disable SSL, please add ```libprocess_enable_ssl: "false"``` to your group_vars inventory configuration. More information to Mesos and SSL: http://mesos.apache.org/documentation/latest/ssl/

| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.8.1        | Mesos masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Consul  1.5.3      | Service Discovery for Container   | Binary                             |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                   | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.8.1        | Mesos slave                | RPM          |
| Docker 19.03.1-ce  | Docker engine              | RPM          |
| Weave 2.5.2        | Container networking       | Docker image |
| Weavescope 1.11.3  | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor (DEPRECATED read changelog.md)        | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.5.3      | Consul Client              | Binary       |

### Graylog DEPRECATED (read changelog.md)

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.5         | Log server     | RPM          |
| Elasticsearch 5.3.1 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus DEPRECATED (read changelog.md)

| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |


## v0.11.1

### Manager node

This will change the way how to load the configuration of mesos libs. If you add your own config to the file ```/etc/mesos-slave/modules``` please migrate the content.

This will enable SSL communication for the mesos agents and mesos server. The verification of the ssl certificate is disabled (default). If you want to disable SSL, please add ```libprocess_enable_ssl: "false"``` to your group_vars inventory configuration. More information to Mesos and SSL: http://mesos.apache.org/documentation/latest/ssl/

| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.8.0        | Mesos masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Consul  1.5.3      | Service Discovery for Container   | Binary                             |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                    | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.8.0        | Mesos slave                | RPM          |
| Docker 18.06.1.ce  | Docker engine              | RPM          |
| Weave 2.5.2        | Container networking       | Docker image |
| Weavescope 1.11.3  | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor (DEPRECATED read changelog.md)         | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.5.3      | Consul Client              | Binary       |

### Graylog DEPRECATED (read changelog.md)

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.5         | Log server     | RPM          |
| Elasticsearch 5.3.1 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus DEPRECATED (read changelog.md)

| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |


## v0.11.0

This will update weave! It can be, that the docker daemon will restart after the weave update.

### Manager node

| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.8.0        | Mesos masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Consul  1.5.3      | Service Discovery for Container   | Binary                             |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                    | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.8.0        | Mesos slave                | RPM          |
| Docker  18.06.1.ce | Docker engine              | RPM          |
| Weave 2.5.2        | Container networking       | Docker image |
| Weavescope 1.11.3  | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor          | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.5.3      | Consul Client              | Binary       |

### Graylog 

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.5         | Log server     | RPM          |
| Elasticsearch 5.3.1 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus

| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |



## v0.10.0

With this Version we will include Mesos-DNS for Service Discovery of Mesos tasks. Its not a replace of consul. Consul will resolve the weave ip address inside the container. Mesos-DNS will resolv the IP address of the host where the task is running.

### Manager node

| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.8.0        | Mesos masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Consul  1.3.0      | Service Discovery for Container   | Binary                             |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                    | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.8.0        | Mesos slave                | RPM          |
| Docker  18.06.1.ce | Docker engine              | RPM          |
| Weave 2.1.3        | Container networking       | Docker image |
| Weavescope 1.6.7   | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor          | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.3.0      | Consul Client              | Binary       |

### Graylog 

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.5         | Log server     | RPM          |
| Elasticsearch 5.3.1 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus
| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |

## v0.9.0

### Manager node

| Software version   | Role              | Install type                       |
| ------------------ | :---------------: | :--------------------------------: |
| Mesos 1.8.0        | Mesos masters     | RPM                                |
| Marathon 1.7.189   | Marathon masters  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster | dependencies to Mesos/Marathon RPM |
| Consul  1.3.0      | Consul server     | Binary                             |
| Metronome 0.6.30   | Schedule Server    | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.8.0        | Mesos slave                | RPM          |
| Docker  18.06.1.ce | Docker engine              | RPM          |
| Weave 2.1.3        | Container networking       | Docker image |
| Weavescope 1.6.7   | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor          | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.3.0      | Consul Client              | Binary       |

### Graylog

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.5         | Log server     | RPM          |
| Elasticsearch 5.3.1 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus
| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |

## v0.8.0

### Manager node

| Software version   | Role              | Install type                       |
| ------------------ | :---------------: | :--------------------------------: |
| Mesos 1.6.1        | Mesos masters     | RPM                                |
| Marathon 1.7.50    | Marathon masters  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster | dependencies to Mesos/Marathon RPM |
| Consul  1.3.0      | Consul server     | Binary                             |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.6.1        | Mesos slave                | RPM          |
| Docker  18.06.1.ce | Docker engine              | RPM          |
| Weave 2.1.3        | Container networking       | Docker image |
| Weavescope 1.6.7   | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor          | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.3.0      | Consul Client              | Binary       |
| Chronos 2.5.1      | Chronos Server             | RPM          |

### Graylog

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.4         | Log server     | RPM          |
| Elasticsearch 1.7.3 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus

| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |

## v0.7.0

### Manager node

| Software version   | Role              | Install type                       |
| ------------------ | :---------------: | :--------------------------------: |
| Mesos 1.6.1        | Mesos masters     | RPM                                |
| Marathon 1.7.50    | Marathon masters  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster | dependencies to Mesos/Marathon RPM |
| Consul  0.9.3      | Consul server     | Binary                             |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.6.1        | Mesos slave                | RPM          |
| Docker  18.06.1.ce | Docker engine              | RPM          |
| Weave 2.1.3        | Container networking       | Docker image |
| Weavescope 1.6.7   | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor          | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |

### Graylog 

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.4         | Log server     | RPM          |
| Elasticsearch 1.7.3 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus
| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |

## v0.6.0

### Manager node

| Software version   | Role              | Install type                       |
| ------------------ | :---------------: | :--------------------------------: |
| Mesos 1.4.1        | Mesos masters     | RPM                                |
| Marathon 1.5.4     | Marathon masters  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster | dependencies to Mesos/Marathon RPM |
| Consul  0.9.3      | Consul server     | Binary                             |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.4.1        | Mesos slave                | RPM          |
| Docker  17.12.0-ce | Docker engine              | RPM          |
| Weave 2.1.3        | Container networking       | Docker image |
| Weavescope 1.6.7   | Container Management       | Docker image |
| DNSMasq 2.76.2     | Container DNS              | RPM          |
| CAdavisor          | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |

### Graylog 

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.4         | Log server     | RPM          |
| Elasticsearch 1.7.3 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus
| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |
