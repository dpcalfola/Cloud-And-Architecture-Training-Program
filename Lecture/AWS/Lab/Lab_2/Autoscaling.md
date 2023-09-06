## Autoscaling

#### Stress Test

1. Bastion Host
2. NAT Instance
   - (Nat Gateway - 비용 발생)

### NAT Instance AWS Console Setting

- Create 2 NAT Instance
- Secure Group of Nat Instance
  - For test, Use Community AMI (Although it could be dangerous)
  - Action -> Change Source/Destination Check -> Stop
  - Routing
    - Explicit Subnet associations(Private 1, 2)
    - Inbound route: 0.0.0.0/0 -> Nat Instance(1, 2)

### Install package in web

```shell
sudo amazon-linux-extras install -y epel
sudo yum install -y stress
```

- Do Stress !!

```shell
stress --cpu 1 --timeout 600
```

- CloudWatch
  - Target Tracking Policy
    - Alarm High: Set on Auto Scaling Group (CPU Utilization 60%)
    - Alarm Low: CloudWatch would make policy automatically
      - CloudWatch -> Alarms 
      - It provide scale up policy, Monitoring
    - on Auto Scaling Group:
      - Desired Capacity: 2->3->4
