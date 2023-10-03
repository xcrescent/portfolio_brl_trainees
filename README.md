# portfolio_brl_trainees

## Contributing Guidelines for Hacktoberfest

Welcome to our open source project! We're thrilled that you're interested in contributing. Before you get started, please read through the following guidelines to ensure a smooth and positive contribution process.

## Getting Started

1. Fork the repository to your own GitHub account.

2. Clone the forked repository to your local machine:

    ```markdown
        git clone https://github.com/xcrescent/portfolio_brl_trainees.git
    ```

3. Create a new branch for your contribution:

    ```markdown
        git checkout -b feature/your-feature
    ```

4. Make your changes and commit them with a descriptive commit message.

5. Push your changes to your forked repository:

    ```markdown
        git push origin feature/your-feature
    ```

6. Create a pull request (PR) from your forked repository to the main repository.

7. Wait for the maintainers to review your PR. Be patient, as this might take some time.

## Contribution Guidelines

### 1. Code of Conduct

Please adhere to our [Code of Conduct](CODE_OF_CONDUCT.md) which outlines the behavior expected from contributors.

### 2. Directory Structure

- Add any new files or make changes in the appropriate directories.
- Do not create files or directories in the root directory unless absolutely necessary.

### 3. BRL Members List

If you are a BRL Member, please add your information to the `brlMembers` list in [`brl_members.dart`](lib/data/brl_members.dart). Include your name, member type, domain, GitHub link, LinkedIn link, and Instagram link.

Example:

```dart
const BrlCard(
  img: 'https://example.com/your-image.png',
  name: 'Your Name',
  memberType: 'III Year Member',
  domain: 'Your Domain',
  git: 'https://github.com/your-github-username',
  linked: 'https://www.linkedin.com/in/your-linkedin-profile',
  ig: 'https://www.instagram.com/your-instagram-profile',
),
```

### 4. Trainee List

If you are a BRL Trainee, please add your information to the `trainees` list in [`trainee_list.dart`](lib/data/trainee_list.dart). Include your name, member type, domain, GitHub link, LinkedIn link, and Instagram link.

Example:

```dart
const BrlCard(
  img: 'https://example.com/your-image.png',
  name: 'Your Name',
  memberType: 'BRL Trainee',
  domain: 'Your Domain',
  git: 'https://github.com/your-github-username',
  linked: 'https://www.linkedin.com/in/your-linkedin-profile',
  ig: 'https://www.instagram.com/your-instagram-profile',
),
```

### 5. External Collaborator List

If you are an external collaborator, please add your information to the `externalColab` list in [`external_collaborator.dart`](lib/data/external_collaborator.dart). Include your name, member type, domain, GitHub link, LinkedIn link, and Instagram link.

Example:

```dart
const BrlCard(
  img: 'https://example.com/your-image.png',
  name: 'Your Name',
  memberType: 'External Collaborator',
  domain: 'Your domain',
  git: 'https://github.com/your-github-username',
  linked: 'https://www.linkedin.com/in/your-linkedin-profile',
  ig: 'https://www.instagram.com/your-instagram-profile',
),
```

### 6. Testing

Before submitting your PR, please ensure that your changes do not break existing functionality. Test your code thoroughly.

### 7. Commit Messages

Write clear and descriptive commit messages to summarize the changes you've made.

### 8. Review Process

All PRs will be reviewed by maintainers. Please be patient during this process.

## Thank you for your contribution! 🚀

We appreciate your time and effort in contributing to this project. Your contributions make a significant difference! If you have any questions or need further assistance, feel free to reach out.

Happy Hacking! 🎉
