# AWS Usage Reporting Script

This script is designed to track and report the usage of various AWS services within your AWS account. It provides a summary of the following AWS resources:

1. **S3 Buckets**
2. **EC2 Instances**
3. **AWS Lambda Functions**
4. **AWS IAM Users**

## Author
- **Name:** Ayush Poudel
- **Date:** September 1, 2024
- **Version:** V1

## Overview

The script is written in Bash and utilizes AWS CLI commands to retrieve information about the specified AWS resources. The information is then appended to a file called `resource_tracker`, which serves as the report for the AWS usage.

### Prerequisites

- **AWS CLI:** The AWS Command Line Interface (CLI) must be installed and configured with the necessary permissions to access the resources being queried.
- **jq:** This is a command-line JSON processor used in the script to parse the JSON output from AWS CLI commands.

### Installation of Prerequisites

- **AWS CLI:** If you don't have the AWS CLI installed, you can follow the instructions [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

- **jq:** To install `jq`, use one of the following commands based on your operating system:
  - **macOS:** `brew install jq`
  - **Ubuntu/Debian:** `sudo apt-get install jq`
  - **CentOS/RHEL:** `sudo yum install jq`
  - **Windows:** `choco install jq`

### Usage

1. **Make the Script Executable:**
   Before running the script, ensure it has the proper executable permissions. You can do this by running:
   ```bash
   chmod +x aws_usage_report.sh
   ```

2. **Run the Script:**
   Execute the script using the following command:
   ```bash
   ./aws_usage_report.sh
   ```

3. **Output:**
   The script generates a report called `resource_tracker` in the current directory. This file contains a list of S3 buckets, EC2 instance IDs, AWS Lambda functions, and IAM users in your AWS account.

### Script Breakdown

- **S3 Buckets:**
  The script lists all S3 buckets available in your AWS account and appends the list to the `resource_tracker` file.
  
  ```bash
  aws s3 ls >> resource_tracker
  ```

- **EC2 Instances:**
  The script lists all EC2 instance IDs in your AWS account by using the AWS CLI and `jq` to filter out the `InstanceId` values. The results are appended to the `resource_tracker` file.
  
  ```bash
  aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource_tracker
  ```

- **AWS Lambda Functions:**
  The script lists all AWS Lambda functions available in your AWS account and appends them to the `resource_tracker` file.
  
  ```bash
  aws lambda list-functions >> resource_tracker
  ```

- **IAM Users:**
  The script lists all IAM users in your AWS account and appends the list to the `resource_tracker` file.
  
  ```bash
  aws iam list-users >> resource_tracker
  ```

### Debugging

- The script uses `set -x` to enable debugging. This will print each command to the terminal as it is executed, which can be useful for troubleshooting.

### Notes

- The script assumes you have proper AWS credentials configured and that your IAM user has the necessary permissions to access the resources listed above.
- The `resource_tracker` file will be created or appended to in the directory where the script is executed. Ensure you have write permissions in that directory.

### Future Enhancements

- **Error Handling:** The script could be enhanced by adding error handling to manage cases where AWS CLI commands fail.
- **Email Notifications:** Add functionality to send the generated report via email to a specified address.
- **Additional Services:** Expand the script to include additional AWS services as needed.

