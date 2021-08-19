# Objective 

To outline the data engineering principles, which if committed to, will help the DevOps team build a Data Platform which is modular, scalable and flexible. 

# Scope 

All Data Engineering pipelines as part of the Data & AI Platform are covered by these principles. The principles will also be used for any Data Engineering pipelines, if applicable, in the Analytics and Data Science capabilities within the platform. 

# Data Engineering Principles 
- All data engineering starts with an architectural drawing stored in a common repository.
- Always Azure native, unless approved by ARB in case of exception. 
- Batch mode as default unless an exception for Real Time Data processing in the Data Engineering Pipelines. 
- Modularity and decoupling of components and functionality should be at the core of design and development for the Data Engineering Pipelines.
- Data Engineering pipelines would be built to switch between Real Time and Batch modes and also push and pull mechanism of data. 
- Notebooks are for exploration and not for Data Engineering Pipelines.
- SQL is the lowest common denominator among different personas using and building the Data & Analytics Platform.
- Configuration & Metadata driven Data Pipelines over hard-code or static pipelines. 
- We use Python as the primary language to create the Data Engineering Pipelines. 
- Automate pipeline testing in the Data Engineering Pipelines. 
- Automated CI/CD with immediate feedback - Deployment of Code, Data Models and any other artifacts using automated YAML Pipelines. No Manual work. 
- Git flow oriented DTAP model for code changes and propogation to higher environments.
- Data Engineering pipelines will always be re-usable, modular and component driven to reduce code complexity and improve reusability. 
- A Data Engineering pipeline would be considered complete with Compute, Storage, Auditing & Logging, Design and Use Case, Automated testing, Automated deployment pipelines and Alert mechanism. 
- Automated documentation of the Data Pipelines and wiki as code in DevOps Tool.
- Always provide comments in code to support readibility of the code. Codes with improper commenting should be rejected in PR Review.
- Always make sure the code passes static code analysis
- Automated performance testing as part of the deployment pipelines with immediate feedback.
- Create Data Engineering pipelines which can support cataloging of the Artifacts in the Data Catalog Tool. 
- Everything is a code, for but not limited to, Infra, ETL pipeline, Design, Orchestration. 
- Simplicity and Sustainability with focus on maintainability through consistency instead of complication and over-engineering while building Data Engineering pipelines. ​
- Storage and Compute will always be decoupled for Data Engineering Pipelines.
- All Data Engineering pipelines would have auditing and logging enabled and we will have dashboards for Data Pipelines capturing the dimensions of Observability.
- Compliance for Security and Privacy by design in the data engineering pipelines. 
- Data Engineers will always commit the code to a feature branch which will then be peer reviewed before merging into main branch.