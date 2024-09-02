#!/bin/bash


#############################################
#Author: Ayush Poudel
#Date: 09-01-2024
#
#Version: V1
#
#This Script will report the AWS Usage
############################################


#Objectives
####This Script file will track the following services usage in AWS
#          1. S3
#          2. EC2
#          3. AWS Lambda
#          4. AWS IAM Users


set -x

#List S3 Buckets
	echo "List of S3 Buckets"> resource_tracker
aws s3 ls >> resource_tracker


#List ec2 instances
echo "List of ec2 instances" >> resource_tracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'>>resource_tracker


#list aws lambda
echo "List of aws lambda">> resource_tracker
aws lambda list-functions >> resource_tracker

#List AWS IAM USers
echo "List of IAM users">> resource_tracker
aws iam list-users >> resource_tracker!


