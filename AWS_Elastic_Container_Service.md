# **Elastic Container Service(ECS)**

## Introduction
*	AWS ECS is scalable and very flexible container management service.
*	ECS allows us to use docker clusters on top of EC2 instance via easy to use APIs.
*	It also allows a user to completely tune the environment as per user's needs making it very complex.
*	ECS comes up with a CLI tool [ECS CLI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html) that understandsdocker compose files and automatically provisions a cluster on AWS.

## Installation
*	ECS CLI an be installed using the [official guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_Configuration.html)
*	First step in installing ECS CLI is creating a profile to be used. We need `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
*	`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` can be obtained by following the steps mentioned on the [page](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration) under section `Access Key and Secret Access Key`
