# newrelic-docker

This is a Docker container to run the newrelic agent on CoreOS. It is inspired 
from [this page][1]. 
The difference with the original solution presented in the previous topic is 
that it reads variables from etcd using the [etcd-env gem][2] so you don't need 
to write your newrelic key in your Dockerfile.

[1]: https://discuss.newrelic.com/t/how-to-try-out-the-docker-beta/19478
[2]: https://rubygems.org/gems/etcd-env