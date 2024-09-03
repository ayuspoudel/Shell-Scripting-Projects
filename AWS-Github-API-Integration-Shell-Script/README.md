# GitHub API Integration Shell Script

This project is a Bash script designed to interact with the GitHub API. The primary functionality of the script is to list all users who have read access (i.e., pull permissions) to a specific repository. This can be particularly useful for repository administrators who want to audit or review the access permissions of their collaborators.

## Features

- **GitHub API Integration**: Uses the GitHub API to fetch data about repository collaborators.
- **User Authentication**: Requires a GitHub username and a personal access token for authentication.
- **Access Control**: Lists users with read (pull) access to a specified repository.

## Prerequisites

- **Git**: Make sure you have Git installed on your system.
- **cURL**: This script uses `curl` to make HTTP requests to the GitHub API.
- **jq**: A lightweight command-line JSON processor used to parse the JSON responses from the GitHub API.

## Setup

1. **Clone the Repository**
    ```bash
    git clone https://github.com/ayuspoudel/Shell-Scripting-Projects.git
    cd Shell-Scripting-Projects
    ```

2. **Create a GitHub Personal Access Token**

   To authenticate with the GitHub API, you'll need a personal access token. Follow [GitHub's instructions](https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create one with appropriate permissions (at least `repo` scope).

3. **Set Up Environment Variables**

   The script requires your GitHub username and personal access token. You can set these as environment variables:

    ```bash
    export username="your_github_username"
    export token="your_personal_access_token"
    ```

## Usage

Run the script with the following command:

```bash
./list-users.sh <repo_owner> <repo_name>
```

Replace `<repo_owner>` with the owner of the repository (e.g., `ayuspoudel`) and `<repo_name>` with the name of the repository.

### Example

```bash
./list-users.sh ayuspoudel Shell-Scripting-Projects
```

This command will list all users with read access to the `Shell-Scripting-Projects` repository owned by `ayuspoudel`.

## Contact

For any questions or concerns, feel free to reach out:

- **Email**: [ayushpoudel@usf.edu](mailto:ayushpoudel@usf.edu)
