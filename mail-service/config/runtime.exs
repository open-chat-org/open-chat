import Config

access_key_id = System.get_env("AWSACCESSKEYID") || raise "Missing AWS access key id"
secret_access_id = System.get_env("AWSSECRETACCESSID") || raise "Missing AWS secret access id"

config :ex_aws,
	access_key_id: [{:system, access_key_id}, {:awscli, "default", 30}, :instance_role],
	secret_access_key: [{:system, secret_access_id}, {:awscli, "default", 30}, :instance_role],
	region: "us-west-2"
