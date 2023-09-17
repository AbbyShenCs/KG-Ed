# KG-Ed
A Knowledge Graph-based Educational Platform

- Built a teaching assistant system using Spring Boot+MyBatis that creates knowledge graphs for different courses to connect course knowledge points and suggest additional learning resources.
- Enhanced system security and reliability with Shiro permission management framework, Log4j logging system, and Redis data cache for faster database read/write operations.
- Adopted MVC architecture with Swagger for external interfaces and JAX-WS for data requests and responses.
- Strengthened security with secure TCP protocol, HTTPS access, verification codes, persistent login sessions, and temporary account freezing after multiple failed login attempts.

The system encompasses two primary components:
- knowledge graph generation and visualization
- a course teaching assistance platform. 

For the development of the system, we integrated mature technologies, using the Spring Boot+MyBatis framework and MySQL 8.0 as the database backend. Adhering to the standard MVC (Model-View-Controller) three-tier architecture, the system boasts excellent compatibility. Additionally, to enhance the system's security and stability, we incorporated the Shiro authorization framework.

For the knowledge graph construction and visualization segment, Natural Language Processing (NLP) techniques are employed. These techniques analyze and extract entities from the course chapters' knowledge points. Concepts are abstracted, segmented, and clustered for structured processing, eventually rendering them into a triplet form representative of the knowledge graph. Post the structured description, the CSV files are imported into the default Neo4j graph database via the Python py2neo library. This process facilitates the extraction of the desired knowledge graph and its sub-graphs. Subsequently, the structure of the sub-graph is exported using the 'export as JSON' feature in the Neo4j Browser. Using the D3.js library, these structures are then visualized on the system. Lastly, employing the py2neo library, this sub-graph is independently connected to a graph database, enabling CRUD operations (Create, Read, Update, Delete) on the nodes and relationships within the graph.
