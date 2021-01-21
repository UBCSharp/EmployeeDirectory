# Setup

## Frontend

1. https://nodejs.org/en/
   install latest LTS version of node js.

2. To install all the dependencies
   `yarn install`

3. To run the frontend locally
   `yarn start`

4. Install prettier and Eslint extensions in VSCode. In Settings, enable "format on save".

## Backend

1. Install the .NET SDK from the above website.
   https://dotnet.microsoft.com/download/dotnet-core/3.1

2. Install Terraform

### Mac Setup:

`brew install tfenv`
`tfenv install latest`
`tfenv use latest`

### Windows Setup:

idk

3. Install C# and Terraform extensions in VSCode

4. Install AWS CLI from https://aws.amazon.com/cli/
   To configure aws:
   `aws configure`
   Get the details from https://cpsc319-hq.slack.com/archives/C01JPCAGLSW/p1610772100000400

5. To publish the function
   `terraform apply`
   If you're using terraform for the first time, also run `terraform init`
