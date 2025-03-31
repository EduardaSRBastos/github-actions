<div align="center">
  
# Update License Year Action
[![GitHub License](https://img.shields.io/github/license/EduardaSRBastos/update-license-year-action?style=plastic&color=darkred)](https://github.com/EduardaSRBastos/update-license-year-action?tab=MIT-1-ov-file)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/EduardaSRBastos/update-license-year-action/update-licence-year.yml?style=plastic)](https://github.com/EduardaSRBastos/update-license-year-action/actions)
[![GitHub Release](https://img.shields.io/github/v/release/EduardaSRBastos/update-license-year-action?style=plastic&color=orange)](https://github.com/EduardaSRBastos/update-license-year-action/releases)
[![GitHub repo size](https://img.shields.io/github/repo-size/EduardaSRBastos/update-license-year-action?style=plastic)](https://github.com/EduardaSRBastos/update-license-year-action)

<p><i>This GitHub Action automatically updates the year in the `LICENSE` file of the repository.</i></p>

 </div>

## Table of Contents
- [Features](#features)
- [How to Use](#how-to-use)
- [Manual Trigger](#manual-trigger)
- [Contributing](#contributing)
- [License](#license)

 ### Features

- Updates the year in the `LICENSE` file to the current year.
- Commits and pushes the change automatically.
- Skips execution if no `LICENSE` file is found.
- Runs automatically on January 1st every year or manually when triggered.

### How to Use

#### - Add via GitHub Marketplace
  - Go to the [GitHub Actions Marketplace](https://github.com/marketplace/actions/update-license-year-github-action).
  - Click "Use latest version" to add it to your repository.
  - Follow the prompts to configure and enable the action.

#### - Manually Add to Your Workflow

  - Add the following file `.github/workflows/update-license-year.yaml` in your repository:

-
  ```yaml
  name: Update License Year
  on:
    schedule:
      - cron: '0 0 1 1 *'  # Runs every January 1st
    workflow_dispatch:  # Allows manual trigger
  
  jobs:
    update-license-year:
      runs-on: ubuntu-latest
      steps:
        - name: Update License Year Action
          uses: EduardaSRBastos/update-license-year-action/update-license-year@main
          with:
            github_token: ${{ secrets.GITHUB_TOKEN }}
  ```

### Manual Trigger

To manually trigger the workflow:

1. Go to **GitHub → Your Repository → Actions**.
2. Select **"Update License Year"** workflow.
3. Click **"Run Workflow"**.

## Contributing
- Support this project by giving it a star ⭐. Thanks!
- Feel free to suggest improvements or report any issues in the repository.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

