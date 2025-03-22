# Azure Landing Zone

## 🌐 Overview
This project provides a modular, production-ready **Azure Landing Zone** using **Terraform**. It sets up essential Azure infrastructure components that act as a secure, scalable foundation for deploying workloads in the cloud.

## 🏗️ Key Features
- Modular structure for reusable components
- Environment-specific configuration (e.g., `dev`)
- Follows best practices for Azure resource deployment
- Easily extendable and customizable

## 📁 Project Structure
```
Azure-Landing-Zone-main/
├── environment/
│   └── dev/
│       ├── main.tf
│       ├── provider.tf
│       ├── terraform.tfvars
│       └── variable.tf
├── modules/
│   ├── azurerm_bastion_host/
│   ├── azurerm_linux_virtual_machine/
│   ├── azurerm_public_ip/
│   ├── azurerm_resource_group/
│   ├── azurerm_storage_account/
│   └── azurerm_subnet/
├── .gitignore
├── LICENSE
└── README.md
```

## 🚀 Getting Started

### Prerequisites
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- Azure CLI or authenticated Azure credentials

### Initialization & Deployment
```bash
cd environment/dev
terraform init
terraform plan
terraform apply
```

## ⚙️ Customization
- Modify `terraform.tfvars` to update environment-specific variables
- Extend or add modules in the `modules/` directory
- Add new environments by copying the `dev` folder and adjusting variables

## 📌 Notes
- Make sure the backend is configured if using remote state
- This setup is designed with modularity in mind — mix and match components as needed

## 📄 License
This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

---

> Designed to jumpstart your Azure infrastructure with Terraform best practices.

