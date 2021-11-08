# Azure Monitors Metrics Index


## API Management

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   FailedRequests     | Failed Gateway Requests (Deprecated)       | Number of failures in gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead  |
| SuccessfulRequests   | Successful Gateway Requests (Deprecated)   | Number of successful gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead   |
|     Duration         | Overall Duration of Gateway Requests       | Overall Duration of Gateway Requests in milliseconds                                                                            |
| UnauthorizedRequests | Unauthorized Gateway Requests (Deprecated) | Number of unauthorized gateway requests - Use multi-dimension request metric with GatewayResponseCodeCategory dimension instead |


## Application Gateway

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   FailedRequests     | Failed Gateway Requests (Deprecated)       | Count of failed requests that Application Gateway has served                                                                    |
|   HealthyHostCount   | Healthy Host Count                         | Number of healthy backend hosts                                                                                                 |
|     ResponseStatus   | Response Status                            | Http response status returned by Application Gateway                                                                            |
|      Throughput      | Throughput                                 | Number of bytes per second the Application Gateway has served                                                                   |
|     TotalRequests    | Total Requests                             | Count of successful requests that Application Gateway has served                                                                |
|  UnhealthyHostCount  | Unhealthy Host Count                       | Number of unhealthy backend hosts                                                                                               |


## Azure Firewall

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|  SNATPortUtilization | SNAT port utilization                      | Percentage of outbound SNAT ports currently in use                                                                              |


## Azure Storage - Tables

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   Transactions       | Transactions                               | The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.                                                                   |
| SuccessServerLatency | Success Server Latency                     | The average time used to process a successful request by Azure Storage. This value does not include the network latency specified in SuccessE2ELatency.                                                                                                 |

## Azure Storage - Queues

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   Transactions       | Transactions                               | The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.                                                                   |
| SuccessServerLatency | Success Server Latency                     | The average time used to process a successful request by Azure Storage. This value does not include the network latency specified in SuccessE2ELatency.                                                                                                 |


## Azure Storage - Files

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   Transactions       | Transactions                               | The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.                                                                   |
| SuccessServerLatency | Success Server Latency                     | The average time used to process a successful request by Azure Storage. This value does not include the network latency specified in SuccessE2ELatency.                                                                                                 |


## Azure Storage - Blob

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   Transactions       | Transactions                               | The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.                                                                   |
| SuccessServerLatency | Success Server Latency                     | The average time used to process a successful request by Azure Storage. This value does not include the network latency specified in SuccessE2ELatency.                                                                                                 |


## Azure Storage 

|     Metric Name      | Display Name                               | Description                                                                                                                     |
| :------------------: | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------|
|   Transactions       | Transactions                               | The number of requests made to a storage service or the specified API operation. This number includes successful and failed requests, as well as requests which produced errors. Use ResponseType dimension for the number of different type of response.                                                                   |
| SuccessServerLatency | Success Server Latency                     | The average time used to process a successful request by Azure Storage. This value does not include the network latency specified in SuccessE2ELatency.                                                                                                 |
