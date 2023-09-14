`./load3.sh 10klog 60 load-log`


```
[OUTPUT]
Retry_Limit 3
net.keepalive_idle_timeout 5
net.connect_timeout 5
workers 8
net.max_worker_connections 3
storage.total_limit_size 3G
```

```
[SERVICE]
storage.delete_irrecoverable_chunks on
scheduler.base 60
scheduler.cap 

```
