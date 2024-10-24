# Task Breakdown

**** Preface ****
1. An Application named "aspnetapp" has been chosen to be deployed
Container Image - mcr.microsoft.com/dotnet/samples:aspnetapp

2. Business team is looking for (Availability)
(a) Easy deployment of the application.
(b) Application needs to be running/online 24/7, even during upgrades.
(c) Implement approval stages before deploying to production.

3. Security:
(a) Application needs to be publicly accessed
(b) SSL certificate that gets renewed every year

4. Scalability:
Application to handle unpredictable web traffic.

5. Everything to be deployed using code

==================

Solution Implementation steps
(a) Create Azure account
(b) Configure subscriptions
(c) provision required resources
- CLI Login
# az login --tenant <Subscription ID>
- resource group creation
# az group create --name Inlogikgroup --location australiaeast
- Clustercreation
# az aks create --resource-group Inlogikgroup --name InlogikAKSCluster --node-count 3 --enable-addons monitoring --generate-ssh-keys --location australiaeast


Pre-requisites
- Install Helm
- Install Terraform