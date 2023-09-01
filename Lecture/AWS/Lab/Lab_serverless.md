## Serverless Lab
 
* ARN
```
arn:aws:sns:us-west-2:567338655634:resize-image-topic
```

* Topic Owner
```
567338655634
```

* Access Policy

```json
{
  "Version": "2008-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__default_statement_ID",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Resource": "arn:aws:sns:us-west-2:567338655634:resize-image-topic",
      "Condition": {
        "StringEquals": {
          "AWS:SourceAccount": "567338655634"
        }
      }
    },
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Action": "SNS:Publish",
      "Resource": "arn:aws:sns:us-west-2:567338655634:resize-image-topic",
      "Condition": {
        "StringEquals": {
          "AWS:SourceAccount": "567338655634"
        }
      }
    }
  ]
}

```