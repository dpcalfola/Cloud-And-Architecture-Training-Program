## Lab capstone architecture Try 1




### Task 1

* Implement the basic structure like below
  * Parameter
  * VPC
  * Nat Gateway (1,2)
  * Subnet
  * Routing
  * Security Group
  * Outputs (It will be shown if stack is created successfully)


* Task1.yaml defines Basic structure information


* CloudFormation
  * Create Stack using Task1.yaml file 
  * Order
```
1. CloudFormation -> Stacks -> Create stack -> With new resources (standard)
2. Upload a template file
3. Step 2, 3 (Specify stack details, Configure stack options)
```




### Task 2 - Create RDS database

1. Create RDS Subnet Group
   1. Create DB subnet group
   2. Set two AZ and two subnet 
      1. 10.0.4.0/24 (AZ_A)
      2. 10.0.5.0/24 (AZ_B)

2. Create Database
```
* admin / qwe123123
* Initial DB name: WPDatabase
* DB Cluster Identifier: MyDBCluster
```



### Task 3 - Create EFS File system
```
File system ID: fs-00d86ff731289b31a

```


### Task 4 - Create Application Load Balancer

1. Create Target Group
2. Create Application Load Balancer