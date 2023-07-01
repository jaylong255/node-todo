# Node Todo
A simple node app to test GCP stack deployments.

---
## Stack

### Static Front End
An example of this type of architecture can be found [here](https://medium.com/swlh/setup-a-static-website-cdn-with-terraform-on-gcp-23c6937382c6)

![Static Frontend](images/gcp-static-frontend.png)

Using the React app in the examples folder of this repository, you may create a build and then push the static assets in /dist to the storage bucket to deploy the frontend.

### Service Accounts

### IAM Policies

### Network
A good network module can be found [here](https://registry.terraform.io/modules/terraform-google-modules/network/google/7.1.0?utm_content=documentLink&utm_medium=Visual+Studio+Code&utm_source=terraform-ls). This may be overkill for what we are trying to do but it's something to fall back on.

We can also use the default network to get started.

### Firewall Rules

### Backend API
We will be using Cloud Run to manage container clusters. Deployments will be handled by a GitHub Actions workflow that pushes 

### In-memory Cache

### Database