# proxmox
promox환경 IaC코드


# Variables 
terraform.tfvars 파일 생성 후 해당 파일에 다음과 같이 조건을 넣어야 해당 스크립트가 수행됩니다.
```
pm_user     = "userId"
pm_password = "userPassWord"

```
```shell
pm_user는 GUI기준으로 생성한 계정 + @ pam
pm_passwrod는 GUI에서 사용하는 계정 비밀번호

```
