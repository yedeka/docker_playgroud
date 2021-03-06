# Elastic Container Service(ECS)

## Introduction
*	AWS ECS is scalable and very flexible container management service.

*	ECS allows us to use docker clusters on top of EC2 instance via easy to use APIs.

*	It also allows a user to completely tune the environment as per user's needs making it very complex.

*	ECS comes up with a CLI tool [ECS CLI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html) that understandsdocker compose files and automatically provisions a cluster on AWS.

## Installation
*	ECS CLI an be installed using the [official guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_Configuration.html)

*	First step in installing ECS CLI is creating a profile to be used. We need `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

*	`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` can be obtained by following the steps mentioned on the [page](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration) under section `Access Key and Secret Access Key`

* Once the credentials are obtained we will be creating a profile to connect to aws for the docker tutorial using following command
`ecs-cli configure profile --profile-name ecs-foodtrucks --access-key $ACCESS_KEY_ID --secret-key $ACCESS_KEY`

* After generating access key we need to use keypair to log into instances. This can be done over [EC2 console](https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#KeyPairs:sort=keyName)

* After key pair creation and saving the generated keypair we start configuring our profile to be used on aws cli as follows

* Next we create a cluster named foodtrucks in the Oregon data center of aws which resides in the us-west-2 region using following command  
`ecs-cli configure --region us-west-2 --cluster foodtrucks`

* Enable cli to create a cloudFormation template  
`ecs-cli up --keypair docker-practise --capability-iam --size 1 --instance-type t2.medium`

* Make changes to dockerfile to specify logging infomration and boostrap memory allocation to run. 

* Head over to [AWS Logger Group](https://us-west-2.console.aws.amazon.com/cloudwatch/home?region=us-west-2#logsV2:log-groups) and create a Logging group

* First push the latest image to docker so that it can be pulled during deployment  
`docker push yedeka/foodtrucks-web`

* After that cd into aws-ecs directory and compose the image  
`ecs-cli compose up`

* Check for the running images using below command  
`ecs-cli ps`

* Pick up the I/p address from the command above and run the application at the I/P address

* Turning down the cluster  
`ecs-cli down --force`
