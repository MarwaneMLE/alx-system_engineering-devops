Simple Web Stack

Description:
This basic web infrastructure hosts a website accessible through www.foobar.com. It lacks firewalls and SSL certificates to secure the server's network. Additionally, each component, including the database and application server, is required to share the server's resources, including CPU, RAM, and SSD.

Specifics About This Infrastructure

What a server is:
A server is a computing system, encompassing both hardware and software, designed to deliver services to other computers, commonly known as clients.

The role of the domain name:
To offer a more user-friendly alias for an IP Address, the Domain Name System (DNS) is employed. For instance, the domain name www.wikipedia.org is simpler to recognize and recall than the corresponding IP address 91.198.174.192. DNS maps the association between IP addresses and domain name aliases, facilitating easier navigation on the internet.

The type of DNS record www is in www.foobar.com:
www.foobar.com utilizes an A record, which can be confirmed by executing the command "dig www.foobar.com." It's important to note that specific results may vary, but within the context of this infrastructure design, an A record is employed. An Address Mapping record (A Record), also recognized as a DNS host record, stores the association between a hostname and its corresponding IPv4 address.

The role of the web server:
The web server is a software or hardware component that receives requests via HTTP or secure HTTP (HTTPS) and provides responses by delivering the content of the requested resource or an error message.

The role of the application server:
To deploy, manage, and host applications along with related services for end users, IT services, and organizations. This facilitates the hosting and delivery of sophisticated consumer or business applications with high-end capabilities.

The role of the database:
To manage a repository of well-organized information that is easily accessible, manageable, and updatable.


The server utilizes the HTTP (Hypertext Transfer Protocol) or its secure version, HTTPS (Hypertext Transfer Protocol Secure), to communicate with the client, which is the user's computer requesting the website. This communication between the client and the server takes place over the internet network through the TCP/IP (Transmission Control Protocol/Internet Protocol) protocol suite.


#Issues With This Infrastructure

##SPOF
The infrastructure has a Single Point of Failure (SPOF) in the MySQL database server. If it goes down, the entire website becomes inaccessible. Implementing redundancy measures like replication or clustering is crucial for improving reliability.
##Downtime when maintenance needed (like deploying new code web server needs to be restarted)

Maintenance checks on any component require putting it down or turning off the server. With only one server in this infrastructure, performing maintenance results in website downtime

##Cannot scale if too much incoming traffic
Scaling this infrastructure is difficult due to a single server hosting all components. Increased requests can quickly deplete resources and cause performance issues. Implementing measures like load balancing and distributing components across multiple servers is crucial for scalability.
