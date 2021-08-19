# Objective 

To outline the Azure Infrastructure principles that act as a guidelines for deploying & operating the infrastructure required for RFC Data & Analytics use cases.
# Scope

The scope of the Platform foundation principles is for all the Cloud IT infrastrucure required for the D&A Data Platform and D&A BI and Data Science use cases

## General Principles 

- Platform First - Utilize cloud native capabilities first and PaaS/SaaS over IaaS. 
- Design to Scale In/Out - So that the application can scale horizontally, adding or removing new resources as demand requires. 
- Pick the best man for the job - Design applications using the components which are best fit the use case with cost as one of the driving factors along with operability and maintainability
- Always prepare for failure by following High Availability & Disaster recovery best practices(VM backups, database snapshots, KeyVault DR, soft delete)
- Infrastructure as Code - All the components should be deployed as code(Ex. YAML / BiCep)
- Reusability, Accessibility - Promotes data and code reusability across domains & capabilities
- Security - Secure by design at each level
  - All the IaaS components should be deployed in Vnets
  - All PaaS services should use private endpoints(Vnet injection)
  - Data traffic should not be exposed to public internet
  - All the outbound internet traffic should flow through Azure Firewall deployed in Hub
  - Data should be encrypted at rest and in transit
  - Follow the least privilege access principle
  - Public internet access should not be enabled on any Storage Services(File Storage, Database)
  - Refrain from using Access Keys to access the cloud components. Wherever possible, prefer to AD Roles, IAM roles, managed Identities and Service Principles Authentication.
  - Use Key rotation policies and always use Key Vault
  - Keep the platform up to date with security patches
- Reliability - Design applications using cloud components which can withstand & self heal in event of failure.
- Supports and Enables Democratization - Users should be able to, within the realm of Governance, access the platform easily for experimentation and exploration. 
- Automated Testing over Manual - All the cloud components should have Automated testing as part of the CI/CD pipelines. 
- Logging, Monitoring and Alerts by Design - All the activities on the cloud components should be logged and monitored automatically with alerts to support auditability, traceability and proactive actions in event of an issue.
- Resource Organization : Azure resources should be organized properly into resource groups at applicable level(resource group / subscription) with appropriate tagging for Governance(Cost management, Access management)
- Implement automated ITSM process is in line with FC ITSM process standards to ensure ability to govern in an end to end manner

