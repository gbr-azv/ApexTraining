<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=0077B6&height=120&section=header"/>

# Salesforce Org Project

## Introduction

This repository hosts a Salesforce Org project aimed at demonstrating and refining skills in Apex, Visualforce, and various Lightning Platform Features. The project serves as a personal development space for exploring Salesforce's vast capabilities and developing custom solutions within the Salesforce ecosystem.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)

## Installation

To clone and run this project, you'll need Git installed on your computer. From your command line:

```bash
# Clone this repository
git clone [YOUR_REPOSITORY_URL]

# Navigate to the repository directory
cd [YOUR_REPOSITORY_DIRECTORY]
```

## Usage

This Salesforce Org project can be used to deploy custom Apex classes, Visualforce pages, and Lightning Web Components to your Salesforce environment. Use Salesforce CLI commands to deploy and manage your code. Example usage:

```bash
sfdx force:source:deploy -p force-app -u MyDevHubOrg
```
## Features

This project incorporates various Salesforce development techniques and features to showcase the platform's capabilities. Key features include:

- [x] **Apex Classes**: Utilize server-side logic to handle complex business operations.
- [x] **Visualforce Pages**: Develop custom user interfaces for a tailored user experience.
- [x] **Lightning Web Components (LWC)**: Use modern web standards to create efficient and dynamic user interfaces.
- [x] **Aura Components**: Build reusable components for Salesforce Classic and Lightning Experience.
- [x] **Salesforce API Integration**: Leverage Salesforce APIs for external app integration and data manipulation.

## Dependencies

To get started with this project, you will need:

- [ ] **Salesforce CLI**: The essential tool for deploying and managing your Salesforce applications.
- [ ] **Visual Studio Code**: Recommended editor, especially with Salesforce Extensions for enhanced development experience.
- [ ] **Git**: Version control system for tracking changes and collaborating.

## Configuration

Setting up your development environment is crucial for a smooth experience:

1. **Install Salesforce CLI**: Download and install from the official Salesforce website.
2. **Setup Visual Studio Code**: Install VS Code and the Salesforce Extension Pack.
3. **Authenticate Your Org**: Use the Salesforce CLI to log in to your Salesforce org with `sfdx auth:web:login`.

## Documentation

Refer to the following Salesforce documentation resources for in-depth information:

- **[Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/)**: Comprehensive guide for Apex language.
- **[Visualforce Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.pages.meta/pages/)**: Everything you need to know about Visualforce.
- **[Lightning Web Components Developer Guide](https://developer.salesforce.com/docs/component-library/documentation/en/lwc)**: Learn about developing with LWC.

## Examples

### Apex Class Example

```apex
public class AccountUtility {
    public static List<Account> getTopAccounts(Integer limitSize) {
        return [SELECT Id, Name FROM Account LIMIT :limitSize];
    }
}
```

### Visualforce Example

```apex
<apex:page controller="AccountController">
    <apex:form>
        <apex:pageBlock title="Accounts">
            <apex:pageBlockTable value="{!accounts}" var="acc">
                <apex:column value="{!acc.Name}"/>
            </apex:pageBlockTable>
        </apex:pageBlock>
    </apex:form>
</apex:page>
```

## Troubleshooting

When working with Salesforce and this project in particular, you might encounter some common issues. Here are troubleshooting steps for some of these scenarios:

### 1️⃣ Common Deployment Issues

- 🚫 **Problem:** Deployment to Salesforce fails with various error messages.
- ⚙️ **Solution:** Ensure that your Salesforce CLI is up to date and that you have the correct permissions in your target org. Check the error message details for clues on what might be wrong with your source code or metadata.

### 2️⃣ Apex Test Failures

- 🚫 **Problem:** Apex tests failing upon deployment.
- ⚙️ **Solution:** Before deploying, run your Apex tests locally using the Salesforce CLI command `sfdx force:apex:test:run`. This helps identify any failing tests early. Ensure all tests pass and provide sufficient code coverage.

### 3️⃣ Visualforce Page Errors

- 🚫 **Problem:** Visualforce pages not rendering as expected.
- ⚙️ **Solution:** Check your page's controller for any errors. Ensure that any custom components or JavaScript resources are correctly referenced and loaded. Use your browser's developer tools to troubleshoot JavaScript or resource loading issues.

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=0077B6&height=120&section=footer"/>
