// ============================================================================
// AI Landing Zone Bicep Deployment Template
// This infrastructure-as-code template follows best practices for modular,
// reusable, and configuration-aware deployments. Key principles:
//
// - **AZD Integration**: This template is optimized for use with the Azure Developer CLI (`azd`).
//   Use `azd provision` to deploy infrastructure and `azd deploy` to deploy your application.
//   It supports automated, repeatable, and configuration-aware workflows. The `main.json` file
//   can include placeholders (e.g., `${AZURE_LOCATION}`, `${AZURE_PRINCIPAL_ID}`) that are automatically
//   injected by `azd` during execution, enabling seamless parameter resolution.
//
// - **Parameterization**: All configuration values are defined in `main.json`.
//   You can create multiple parameter files to support different deployment configurations,
//   such as variations in scale, resource combinations, or cost constraints.
//
// - **Feature Flags**: Resource provisioning is modular and controlled via feature flags
//   (e.g., `deployAppConfig`). This enables selective deployment of components based on project needs.
//
// - **Azure Verified Modules (AVM)**: Official AVM modules are used as the foundation
//   for resource deployment, ensuring consistency, maintainability, and alignment with Microsoft standards.
//   Reference: https://azure.github.io/Azure-Verified-Modules/indexes/bicep/bicep-resource-modules/
//   When AVM does not cover a specific resource, custom Bicep module is used as fallback.
//
// - **Output Exposure**: Key outputs such as connection strings, endpoints, and resource IDs
//   are exposed as Bicep outputs and can be consumed by downstream processes or deployment scripts.
//
// - **Post-Provisioning Automation**: Supports optional post-provisioning scripts to perform data plane
//   operations or additional configurations. These scripts can run independently or as `azd` hooks,
//   enabling fine-grained control and custom automation after infrastructure deployment.
//
// ============================================================================

targetScope = 'resourceGroup'

ERROR_PLACEHOLDER_SEE_ACTUAL_FILE