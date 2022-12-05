# tf-foreach-import-bug

## Steps to reproduce

### Initial setup

1. Install [tfenv](https://github.com/tfutils/tfenv) to make sure correct Terraform version is used
1. Run `terraform version` to trigger install and verify `Terraform v1.3.6` is installed
1. `terraform init`
1. `terraform plan`
1. `terraform apply --auto-approve`

### Import new resource

1. `terraform import 'random_id.test["id2"]' p-9hUg`

- Expected result: New resource should have been imported into state
- Actual result: Command outputs "Import successful!", but no state is imported
