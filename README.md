# Overview

    You’ll do the following:
    Install Terraform and Docker
    Create a Terraform configuration file
    Initialize Terraform
    Apply the configuration (to create the NGINX container)
    Destroy resources (to clean up)# Terraform-demo



 # Prerequisites

    ✅ Installed:
        Docker Desktop (and running)
        Terraform (installed and added to PATH)
        VS Code or any text editor




 Step 1: Create Terraform Configuration (main.tf)
   
    Note:
    Don’t use docker_image.nginx.latest — it causes the “unsupported attribute” error.
    Instead, use docker_image.nginx.image_id.

Step 2: Initialize Terraform    
        
         This will:
         Download the Docker provider
         Set up your environment

 <img width="1723" height="968" alt="Screenshot 2025-10-26 211052" src="https://github.com/user-attachments/assets/2f4e9434-5728-41b1-a7ae-54bf30529369" />


Step 3: Apply Configuration

        Terraform will:
        Pull the nginx:latest image
        Create a container named terraform-nginx
        Map port 8080 (host) → 80 (container)

 <img width="1732" height="990" alt="Screenshot 2025-10-26 211823" src="https://github.com/user-attachments/assets/e9af10b6-1552-4755-a4d9-725109023819" />



 Step 4: Verify       

         Open your browser and visit:
         http://localhost:8080
         You should see the default NGINX welcome page


<img width="1917" height="606" alt="Screenshot 2025-10-26 212304" src="https://github.com/user-attachments/assets/b6c58d54-b4e3-40e4-ac95-3c8c4afb3753" />


 Step 5: Destroy

          To remove the container and image
          managed by Terraform: 
          Type yes to confirm.    


 <img width="1237" height="139" alt="Screenshot 2025-10-26 214018" src="https://github.com/user-attachments/assets/fbe4743d-e8f4-402e-b977-31f627e3945e" />
