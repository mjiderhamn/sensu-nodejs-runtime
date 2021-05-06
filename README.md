# Sensu Go Node.JS Runtime Assets

This project, inspired by [sensu-ruby-runtime](https://github.com/sensu/sensu-ruby-runtime),
provides Sensu Go Assets containing portable Node.JS
runtimes. In practice, this Node.JS runtime asset should allow
Node.JS-based scripts (e.g. Sensu Community plugins) to be
packaged as separate assets containing Node.JS scripts and any corresponding npm
dependencies. In this way, a single shared Node.JS runtime may be delivered to
systems running the new Sensu Go Agent via the Sensu Go's Asset framework
(i.e. avoiding solutions that would require a Node.JS runtime to be redundantly
packaged with every Node.JS-based plugin).

## Platform Coverage

Currently, this repository supports "generic" Linux (including the [official `sensu/sensu-rhel` Docker image](https://hub.docker.com/r/sensu/sensu-rhel))
and Alpine 3.9+, upon which the [official `sensu/sensu` Docker image](https://hub.docker.com/r/sensu/sensu) is built.
 
If you would like extend the coverage, please take a look at the Github Action integration and associated `Dockerfile`s
and build scripts. I'm happy to take pull requests that extend the platform coverage.
