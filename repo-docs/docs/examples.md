---

## 📂 Example Config Files

### `config.yaml`

```yaml
Parameters:
  EndTime: "23:59:59"
  EndDate: "2024-06-16"
  AccountIds: ["123456789012", "098765432109"]
  SsoSessionDuration: "6H"
  RoleName: "sample-role-1"
  UserList: ['user@example.com']
  ManagedPolicies: ['AWSOrganizationsFullAccess']
```

### `inline_policy.json` (Optional)

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:*"],
      "Resource": "arn:aws:s3:::sample-bucket-*"
    }
  ]
}
```

---
