# Objective 
To outline data modelling principles which, if committed to, will help understand and standardize the way data is modelled within the D&A Platform​

# Scope 
The scope of the data modelling principles is limited to data modelling within the Business Data hub and the Data Consumption hub (see Data Platform Layer principles)

# Data Modeling Principles for the Data & AI platform

**Principles for Conceptual/Logical/Physical data models (CDM/LDM/PDM)**
- CDMs, LDMs and PDM's are created for Business Domain Models and Analytical Models only
- In LDMs and PDMs data is grouped according to business objects (i.e. Material, Customer, Production Order)
- CDMs models must grouped using the business domain as bounded context
- The granularity of CDMs is limited to the description of entities and relationships only and no attributes.
- PDMs must always be connected to LDMs while LDMs must always be connected to CDMs
- PDM's must be generated automatically from LDMs, therefore the granularity of Logical and Physical models must be the same
- Multiple different PDM's (Relational, Dimensional, Graph, etc) can exits, based on the same LDM's
- The CDMs, LDMs and PDMs must be extensible, depending on business use cases.
- Naming standards should be strictly adhered to and any deviation from the same needs to be explained. 
- Performance and the cost implications of the physical data model should be taken into consideration by design.
- Data Model should be reviewed and validated by using the process of Dry run against use cases.


**Business Domain and Analytical Models**
- For every Analytical data entity surrogate keys are needed, to avoid dependency on source key identifiers
- Surrogate keys must only be used for entity joins (i.e. be meaningless to everyone).
- Physical Business Domain Models can have different structures (Denormalized, Graph)
- Conceptual/Logical Analytical Models have a 'dimensional' description (i.e. Star Schema) 
- Physical Analytical Models have a (i.e. Star Schema) structure  
- All data entities must be classified using an agreed classification schema.
- Reference data objects/conformed dimensions should be modelled in line with  the Reference Data Management principles. 
- Enterprise standard analysis are made available for reporting and visualization within the analytical model only (Self Service BI)
- A KPI/Use case catalog must be made available for cross domain use with a feature store to publish certified reporting data points which can be resued across domains. 
- Naming conventions for entities etc. must be adhered to strictly. Any deviation should have a valid reason. 
- To support data lineage, the data catalog, the data modelling environment as well as the physical storage of business and analytical data models must be integrated
- To define business terms, current MyInsights (enterprise approved reports) vocabulary must be considered as leading
- The data catalog must connect the business terms with the (conceptual, logical, physical) technical terms of Business Domain Models and Analytical Models. 
- Performance and the cost implications of the physical data model should be taken into consideration by design.