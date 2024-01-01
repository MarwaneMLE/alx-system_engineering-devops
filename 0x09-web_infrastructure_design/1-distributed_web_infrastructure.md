Distributed Web Infrastructure
##Description:
This distributed web infrastructure aims to alleviate traffic on the primary server by distributing a portion of the load to a replica server. A load balancer is employed to evenly distribute traffic between the primary and replica servers, enhancing overall system performance and reliability.

#Specifics About This Infrastructure

Distribution Algorithm:
The HAProxy load balancer utilizes the Round Robin distribution algorithm, cycling through each server in turns based on their assigned weights. This ensures equitable distribution of processing time among servers. Being dynamic, Round Robin allows for real-time adjustments to server weights.

Load-Balancer Setup:
The HAProxy load balancer implements an Active-Passive setup. In Active-Active, workloads are distributed across all nodes to prevent overloading. This setup enhances throughput and response times. In contrast, in Active-Passive, not all nodes are active simultaneously. The passive node becomes active if the preceding node is inactive, maintaining continuous availability.

Primary-Replica (Master-Slave) Database Cluster:
In a Primary-Replica setup, one server acts as the Primary server and another as the Replica. The Primary server handles read and write requests, while the Replica server is limited to read operations. Data synchronization occurs when the Primary server executes a write operation, ensuring consistency between the two.

Difference between Primary and Replica Nodes:
The Primary node manages all write operations for the site, while the Replica node handles read operations, reducing the read traffic directed to the Primary node. This segregation optimizes the performance of each node for their specific roles in the application.

#Issues With This Infrastructure

Single Points of Failure (SPOF):
Numerous potential Single Points of Failure exist in this infrastructure. If the Primary MySQL database server experiences an outage, the entire site becomes incapable of making changes, such as adding or removing users. The servers containing the load balancer and the application server connecting to the primary database server are also vulnerable to being Single Points of Failure.

Security Concerns:
Security issues arise as data transmitted over the network lacks encryption through an SSL certificate, exposing it to potential spying by hackers. Additionally, the absence of firewalls on any server leaves no means to block unauthorized IPs, heightening security vulnerabilities.

Lack of Monitoring:
The absence of a monitoring system leaves us unaware of the status of each server. Without monitoring, it is challenging to identify potential issues, track performance metrics, or respond promptly to server-related events.






