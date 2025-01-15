# Technical-Assessment

Candidate Name: Azeez Razaq
Docker Image: iamzee007/flask-climate-app

The choose CI/CD tool for this assessment is Git Actions, the pipeline for this project is arbitruary, for a single application deployment cant be made platform/cloud agnostic. 

I made slight modifications to the application code. Secrets were hardcoded, which is unacceptable, i replaced both with environment variables namely:
- "FLASK_SECRET_KEY"
- "OPENWEATHER_API_KEY"

This way to tackle the issue of security, they could be pulled into the deployed application as secrets, hence that way they would be encrypted at rest and in transit.

the CI/CD pipeline has three stages
- To build and save the project to the docker registry
- Provision Infrastructure
- Deploy application to Infrastructure.

scalability, reliability, security and fault tolerance can only be addressed when the deployment destination has been decided. There are different options to deploy a project and the method of handling those cloud native best practices in those environments differs.