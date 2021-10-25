---
name: Bug report
about: Report an error or unexpected behavior you came across while using the openintro
  package
title: '[Bug]:'
labels: '["bug", "duplicate", "help wanted", "question","good first issue"]'
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
    id: bug
    attributes:
      label: Bug
      description: Describe the bug.
      placeholder: A clear and concise description of what the bug is.
    validations:
      required: true
  -type: textarea
    id: reprex
    attributes:
      label: Reproducible Example
      description: A minimal reproducible example of the bug.
      placeholder: Post your code from the `reprex` package here.
    validations:
      required: true
  -type: textarea
    id: expected
    attributes:
      label: Expected Behavior
      description: Expected behavior
      placeholder: A clear and concise description of what you expected to happen.
    validations:
      required: true
  -type: textarea
    id: session
    attributes:
      label: Session Info 
      description: Information about the R session when the bug occurred. 
      placeholder: Paste results of `xfun::session_info("openintro")` here.
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

To get help or report a bug, please make a minimal **repr**oducible **ex**ample using the [`reprex`](https://reprex.tidyverse.org/) package. If you haven’t heard of or used reprex before, you’re in for a treat! Seriously, reprex will make all of your R-question-asking endeavors easier (which is a pretty insane ROI for the five to ten minutes it’ll take you to learn what it’s all about). For additional reprex pointers, check out the [Get help!](https://www.tidyverse.org/help/) section of the tidyverse site.
