# CI/CD Pipeline with Docker, GitHub Actions, and Terraform:

This repository demonstrates how to set up a CI/CD pipeline using GitHub Actions to build and deploy a Dockerized Node.js application. The pipeline automates linting, building, and     pushing the Docker image to Docker Hub. The application can then be deployed using Terraform.

Prerequisites:

		GitHub Repository: Make sure you have access to this repository or forked it to your account.
		Docker: Install Docker on your local machine to build and run containers.
		Docker Hub Account: You need a Docker Hub account to push and store the Docker image.
 		Terraform: Ensure Terraform is installed on your local machine to deploy the application.
		New Relic Account (Optional): To monitor and log the application performance.
Steps to Set Up and Run the Pipeline
1. Fork the Repository (Optional)
If you haven’t already, fork this repository to your GitHub account.

2. Clone the Repository:
   
            git clone https://github.com/your-username/repository-name.git
            cd repository-name
4. Set Up GitHub Secrets:
    To allow your pipeline to authenticate with Docker Hub, you need to store your Docker Hub credentials as GitHub Secrets.
    Go to the Settings tab of your repository.

    Under the Secrets and variables section, click on Actions.

    Click New repository secret and add the following secrets:

        DOCKER_USERNAME: Your Docker Hub username.
        DOCKER_PASSWORD: Your Docker Hub password (or token).


5. Set Up the GitHub Actions Pipeline
The CI/CD pipeline is already set up in .github/workflows/pipeline.yml. This pipeline automates the following tasks:

        Linting the code using ESLint.
        Building the Docker image from the Dockerfile.
        Pushing the Docker image to Docker Hub.

5. Customize the Dockerfile
    Ensure the Dockerfile in your repository is set up correctly for your application.

6. Configure Terraform Files
    You need to configure Terraform and add required vars to deploy the application. If you’re deploying to a local Docker setup.

7. Push the Code to GitHub
    Once you've set up your GitHub secrets, Dockerfile, and Terraform configuration, commit and push your changes:
        git add .
        git commit -m "Set up GitHub Actions pipeline and Terraform deployment"
        git push origin main

8. Trigger the GitHub Actions Pipeline
    You can trigger the GitHub Actions pipeline manually by going to the Actions tab in your GitHub repository and selecting the CI/CD pipeline workflow. Then, click on Run workflow.

9. Verify the Pipeline Execution

   Once triggered, the GitHub Actions pipeline will run the following steps:
    
        Linting: Check for code issues using ESLint.
    
        Build Docker Image: Build the Docker image using the Dockerfile in the repository.
    
        Push Docker Image: Push the image to Docker Hub.
    
        You can monitor the progress of the pipeline in the Actions tab of your GitHub repository.

11. Deploy the Application with Terraform
    Once the Docker image is successfully pushed to Docker Hub, you can deploy the application with Terraform.

    Run terraform init to initialize Terraform and download the required providers.

    Run terraform apply to deploy the container on your local machine (or any other cloud provider of your choice).

        terraform init
        terraform apply
        You should now have your container running locally and you could check by visiting http://localhost:3000 from your browser

12. Monitor Application with New Relic (Optional)
    If you’ve configured the New Relic integration in your Node.js application, you can visit your New Relic dashboard to view application performance metrics, errors, and throughput.

13. Clean Up
    Once you’re done with the deployment, don’t forget to destroy your resources to avoid unnecessary costs.

        terraform destroy

### Additional Notes:

New Relic Logs: By default, New Relic doesn’t send logs from Node.js applications unless you configure log forwarders. If you need to send logs, you might want to set up New Relic’s log forwarding using Fluent Bit or another log aggregation tool.

Cloud Deployment: If you want to deploy to a cloud service like AWS, Google Cloud, or Azure, you can update the Terraform configuration to use services like ECS, GKE, or AKS, depending on your chosen cloud provider.

### Troubleshooting:

Pipeline fails to run: Check the Actions tab in GitHub for detailed logs of the pipeline execution.
Docker image not pushed: Verify that your Docker Hub credentials in the GitHub secrets are correct.
Application not running: Check the Terraform logs for any errors during the deployment process.
