# Ansible script to install a whole mesos stack

[![Donate](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/AVENTER/donate)

This playbook deploys a full Mesos cluster.

## v0.7.0

### Manager node

| Software version   | Role              | Install type                       |
| ------------------ | :---------------: | :--------------------------------: |
| Mesos 1.6.1        | Mesos masters     | RPM                                |
| Marathon 1.7.50    | Marathon masters  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster | dependencies to Mesos/Marathon RPM |
| Consul  0.9.3      | Consul server     | Binary                             |
| Docker  18.06.1.ce | Docker engine     | RPM                                |

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
| Docker  17.12.0-ce | Docker engine     | RPM                                |

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
