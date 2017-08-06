{
    backends: [ "aws-cloudwatch-statsd-backend" ],
    cloudwatch: 
    {
        configureFromEnv: true,
        accessKeyIdEnvKey: 'AWS_ACCESS_KEY_ID',
        secretAccessKeyEnvKey: 'AWS_SECRET_ACCESS_KEY',
        regionEnvKey: 'AWS_REGION',
        verbose: true,
        graphcoolKeyProcessing: true
    },
    port: 8125
}