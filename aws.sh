export acli="docker run --rm -it -v /Users/keshavbaweja/.aws:/root/.aws -v /Users/keshavbaweja/projects:/projects amazon/aws-cli --profile admin1 --region ap-southeast-1"

$acli amplify list-apps 
$acli amplify delete-app --app-id <app-id>

$acli cognito-identity list-identity-pools --max-results 20
$acli cognito-identity delete-identity-pool --identity-pool-id <identity-pool-id>

$acli lambda list-functions
$acli lambda delete-function --function-name <function-name>

$acli iam list-roles
$acli iam detach-role-policy --role-name <role-name> --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

$acli dynamodb list-tables
$acli dynamodb delete-table --table-name <table-name>

aws eks --region ap-southeast-1 update-kubeconfig --name eksClusterDemo
