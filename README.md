# Summer Series 2023 - Ops & Best Practices

## Table of Contents

- [Architecture patterns](#architecture-patterns)
  - [Kubernetes](#kubernetes)
    - [Deploying as a DaemonSet](#deploying-as-a-daemonset)
    - [Deploying as a sidecar](#deploying-as-a-sidecar)
  - [Host](#host)


## Topics to cover

### Architecture patterns

* Summary of the different ways to deploy fluent-bit to be discussed

#### Kubernetes

##### Deploying as a DaemonSet

* Display a 2 nodes k8s cluster
* Show the config details of the daemonset
* Show the configs in Prometheus deployment
* Publish Prometheus and show the metrics available
* Optionally show the metrics in Grafana



##### Deploying as a sidecar

* Show the config details of the sidecar
* Display sample app with a fbit sidecar grabbing logs and sending them to stdout (or external service if prep time permits)


#### Host

##### Deploying as agent

* Installing from packages. It installs as a service
* Show prometheus configuration (target)
* Show metrics in prometheus
* Show the metrics in Grafana

*Prometheus remote write


### Monitoring

#### Different metrics we have

* Formats

* Plugins
  * Records/bytes
  * Files
  * Drops
  * Errors
  * Retries

* Storage
  * Chunks
  * Memory

* Filters
  * Records/bytes
  * Add/drop
  * Totals

* Others
  * Overlimit
  * Uptime
  * 


#### How to monitor

* Show the dashboard in Grafana
* Show known patterns
  * Show images or run script to simulate
  * How to analyze the case?
  * What can be done? (briefly, this could vary depending on the environment)
* Patterns to show
  * Backpressure
  * Retries (with and without backpressure)
  * Drops
  * Ingestion drop


### Troubleshooting

Cases
* Data is not flowing
* Corrupted and rejected messages
* Formatting is incorrect

Tooling
* Tap/trace
* Chunk inspector
* 


### Tuning

What should be tuned?
* Are we forwarding or processing?
* What are the bottlenecks, limits, goals, constraints, tradeoffs?
* What are the risks, costs, benefits, alternatives?
* What are the assumptions, dependencies, requirements?



#### What can be tuned

* Input
  * Threaded
  * Processors
* Output
  * Workers
  * Storage limits
  * Processors
* Buffering
  * Buffer_chunk_size
  * Buffer_max_size
  * Static files, others
* Filters
* Storage
* Parsers
  * Built in
  * Multiline
  * Regex
* Others
