                    Terraform
                        │
        ┌───────────────┼────────────────┐
        │               │                │
       IAM            S3 Buckets      KMS Key
        │               │                │
        └───────────────┼────────────────┘
                        │
                  AWS Glue Crawler
                        │
                  AWS Glue ETL Job
                        │
               Processed S3 (Parquet)
                        │
               Amazon Redshift Serverless
                        │
                  Amazon QuickSight

Project Structure - project1

terraform-data-lake/
│
├── provider.tf
├── variables.tf
├── outputs.tf
├── main.tf
├── s3.tf
├── iam.tf
├── kms.tf
├── glue.tf
├── redshift.tf
├── terraform.tfvars
│
├── glue_scripts/
│      etl_job.py
│
├── datasets/
│      sales.csv
│
└── README.md

Day 1: Create S3 buckets with Terraform.
Day 2: Add IAM roles and policies.
Day 3: Create a KMS key and enable S3 encryption.
Day 4: Provision a Glue Database and Crawler.
Day 5: Upload the PySpark ETL script to S3 and create the Glue Job.
Day 6: Provision Redshift Serverless and load the transformed Parquet data.
Day 7: Connect QuickSight and build a dashboard.
Day 8: Refactor the Terraform code into reusable modules (modules/s3, modules/iam, modules/glue, etc.) and store it in GitHub.

By the end, you'll have an end-to-end AWS data engineering project that demonstrates both infrastructure automation with Terraform and ETL development with Glue and PySpark—exactly the combination many AWS Data Engineer interviewers look for.

terraform init
terraform validate
terraform fmt
terraform plan
terraform apply
terraform state
terraform output
terraform destroy (before logging out of the day, then next terraform init and terraform apply and then start)

