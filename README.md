# VPC and Networking :sushi::japan:

## What is a VPC?

  Let's you provision your network that you define. You have complete control over your virtual networking environment including IP address range, creating subnets and configuring route tables and network gateways.

## What is a Subnet?

  A subnet is a partition of an IP network into a smaller network segment. Subnetting is used to divide a large network into smaller and more efficient subnetworks. Each subnet allows its connected devices to communicate with each other and routers are used to communicate between subnets. A subnet must be associated with a network ACL in a VPC.

## How do IP addresses work?

  An IP address is divided into two fields: a network ID and a host ID. The point which separates these IDs depend on which class address it is... A, B or C. The subnet mechanism uses a portion of the host ID to identify individual subnets. A subnet mask is used to identify the part of the address that should be used as the subnet ID.

## What is a Network ACL?

  This is an optional layer of security (there is a default NACL but it allows all traffic in and out) for a VPC acting as a firewall for traffic controlling what goes in and out of your subnets. These work similar to your security groups for your EC2 instances. You can associate various subnets with one network ACL. These contain rules that are numbered and are evaluated in order of number (lowest first)

## What is a Security Group?

  A security group acts as a virtual firewall controlling the traffic in and out of an EC2 instance.

## What's the difference between a Security Group and a Network ACL?

  - Security groups operate at instance level whereas NACLs operate at the subnet level
  - A NACL supports allow rules and deny rules whereas security groups only support allow rules
  - In NACl return traffic must explicitly be allowed by rules
  - NACL evaluates rules one at a time in order, security groups evaluate all rules before deciding whether to allow traffic
  - NACL applies to all instances in it's subnet whereas security group only applies to an instance if specified (although a default sg will be placed that simply allows all traffic)

## What is a route table?

  Your VPC has an implicit router, and you use route tables to control where network traffic is directed. Every subnet must be associated to a with a route table. Each route in a table specifies a route and a target

## What is an internet gateway?

  An internet gateway serves two purposes: to provide a target in your VPC route tables for internet-routable traffic, and to perform network address translation (NAT) for instances that have been assigned public IPv4 addresses. :bacon::bread:

![](https://camo.githubusercontent.com/2f12eb5365d43468fadb065d25d698a8f03b2749/68747470733a2f2f646f63732e6177732e616d617a6f6e2e636f6d2f7670632f6c61746573742f7573657267756964652f696d616765732f6e61742d696e7374616e63652d6469616772616d2e706e67)
