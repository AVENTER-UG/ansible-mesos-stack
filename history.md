## v0.9.0

### Manager node

| Software version   | Role              | Install type                       |
| ------------------ | :---------------: | :--------------------------------: |
| Mesos 1.8.0        | Mesos masters     | RPM                                |
| Marathon 1.7.189   | Marathon masters  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster | dependencies to Mesos/Marathon RPM |
| Consul  1.3.0      | Consul server     | Binary                             |
| Docker  18.09.ce   | Docker engine     | RPM                                |
| Metronome 0.6.30   | Shedule Server    | JAVA dependencies to Marathon      |

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
