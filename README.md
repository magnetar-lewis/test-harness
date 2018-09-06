<!-- This file was automatically generated by the `build-harness`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->

[![Cloud Posse](https://cloudposse.com/logo-300x69.svg)](https://cloudposse.com)

# test-harness [![Build Status](https://travis-ci.org/cloudposse/test-harness.svg?branch=master)](https://travis-ci.org/cloudposse/test-harness) [![Codefresh Build Status](https://g.codefresh.io/api/badges/build?repoOwner=cloudposse&repoName=test-harness&branch=master&pipelineName=test-harness&accountName=cloudposse&type=cf-1)](https://g.codefresh.io/pipelines/test-harness/builds) [![Latest Release](https://img.shields.io/github/release/cloudposse/test-harness.svg)](https://github.com/cloudposse/test-harness/releases/latest) [![Slack Community](https://slack.cloudposse.com/badge.svg)](https://slack.cloudposse.com)


Collection of Makefiles and test scripts to facilitate testing Terraform modules, Kubernetes resources, Helm charts, and more.


---

This project is part of our comprehensive ["SweetOps"](https://docs.cloudposse.com) approach towards DevOps. 


It's 100% Open Source and licensed under the [APACHE2](LICENSE).










## Usage

Use the `test-harness` Docker image as the base image in the application `Dockerfile`, and copy the modules from `tests` folder into `/tests/` folder in the Docker container.

```dockerfile
FROM cloudposse/test-harness:0.1.0 as test-harness

FROM cloudposse/geodesic:0.28.0

# Copy root modules into /conf folder
COPY --from=test-harness /tests/ /tests/

WORKDIR /tests/
```





