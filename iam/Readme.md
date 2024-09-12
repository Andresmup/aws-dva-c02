# Convert yaml policy template to json

## Installing yq

```sh
sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install yq
```

## Via command command

```sh
yq -o json policy.yaml > policy.json
```

## Using the bash script

```sh
./convert
```

### Create  IAM Policy

```sh
aws iam create-policy \
--policy-name policyConvertedFromYaml \
--policy-document file://policy.json
```