<div align="center">
  
# My GitHub Actions
[![GitHub License](https://img.shields.io/github/license/EduardaSRBastos/github-actions?style=plastic&color=darkred)](https://github.com/EduardaSRBastos/github-actions?tab=MIT-1-ov-file)
[![GitHub branch check runs](https://img.shields.io/github/check-runs/EduardaSRBastos/github-actions/main?style=plastic)](https://github.com/EduardaSRBastos/github-actions/actions)
[![GitHub repo size](https://img.shields.io/github/repo-size/EduardaSRBastos/github-actions?style=plastic)](https://github.com/EduardaSRBastos/github-actions)

<p><i>A collection of GitHub Actions.</i></p>

 </div>

 <br>

## Table of Contents
- [Update License Year GitHub Action](#update-license-year-github-action)
  - [Features](#features)
  - [How to Use](#how-to-use)
  - [Manual Trigger](#manual-trigger)
- [License](#license)

<br>

## Update License Year GitHub Action

<p><i>This GitHub Action automatically updates the year in the `LICENSE` file of the repository.</i></p>

### Features

- Updates the year in the `LICENSE` file to the current year.
- Commits and pushes the change automatically.
- Skips execution if no `LICENSE` file is found.
- Runs automatically on January 1st every year or manually when triggered.

### How to Use

#### 1. Create a Workflow File

Add the following file `.github/workflows/update-license-year.yaml` in your repository:

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
        uses: EduardaSRBastos/github-actions/update-license-year@main
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```

### Manual Trigger

To manually trigger the workflow:

1. Go to **GitHub → Your Repository → Actions**.
2. Select **"Update License Year"** workflow.
3. Click **"Run Workflow"**.

<br>

## License

This project is open-source under the MIT License.

