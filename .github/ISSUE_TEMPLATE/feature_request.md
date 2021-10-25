---
name: Feature request
about: Suggest an idea for this project
title: '[Feature]:'
labels: '["documentation", "enhancement", "question", "help wanted", "good first issue"]'
assignees: ''
body:
  - type: input
      id: contact
      attributes:
        label: Contact Details
        description: How can we get in touch with you if we need more info?
        placeholder: ex. email@example.com
      validations:
        required: false
  - type: textarea
    id: problem
    attributes:
      label: Source
      description: Is your feature request related to a problem? Please describe.
      placeholder: A clear and concise description of what the problem is. Ex. I'm always frustrated when [...]
    validations:
      required: true
  -type: textarea
    id: solution_desired
    attributes:
      label: Desired Solution
      description: Describe the solution you'd like.
      placeholder: A clear and concise description of what you want to happen.
    validations:
      required: false
  -type: textarea
    id: alts
    attributes:
      label: Alternative Solutions
      description: Describe any alternatives you may have considered.
      placeholder: A clear and concise description of any alternative solutions or features you've considered.
    validations:
      required: false
  -type: textarea
    id: add_context
    attributes:
      label: Additional context
      description: Add any other context about the feature request here.
      placeholder: 
---

Welcome to the openintro GitHub repo! 

Thanks for taking an interest in our project! 

Before opening a new issue, please be sure to [search issues and pull requests](https://github.com/openintrostat/openintro/issues) to make sure the bug hasn’t been reported and/or already fixed in the development version. By default, the search will be pre-populated with `is:issue is:open`. You can [edit the qualifiers](https://help.github.com/articles/searching-issues-and-pull-requests/) (e.g. `is:pr`, `is:closed`) as needed. For example, you’d simply remove `is:open` to search *all* issues in the repo, open or closed.
