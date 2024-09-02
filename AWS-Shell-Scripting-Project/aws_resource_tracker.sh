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


#List S3 Buckets
aws s3 ls


#List ec2 instances
aws ec2 describe-instances


#list aws lambda
aws lambda list-functions

#List AWS IAM USers
aws iam list-users

