# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Neptune do
  @moduledoc """
  Amazon Neptune

  Amazon Neptune is a fast, reliable, fully-managed graph database service that
  makes it easy to build and run applications that work with highly connected
  datasets.

  The core of Amazon Neptune is a purpose-built, high-performance graph database
  engine optimized for storing billions of relationships and querying the graph
  with milliseconds latency. Amazon Neptune supports popular graph models Property
  Graph and W3C's RDF, and their respective query languages Apache TinkerPop
  Gremlin and SPARQL, allowing you to easily build queries that efficiently
  navigate highly connected datasets. Neptune powers graph use cases such as
  recommendation engines, fraud detection, knowledge graphs, drug discovery, and
  network security.

  This interface reference for Amazon Neptune contains documentation for a
  programming or command line interface you can use to manage Amazon Neptune. Note
  that Amazon Neptune is asynchronous, which means that some interfaces might
  require techniques such as polling or callback functions to determine when a
  command has been applied. In this reference, the parameter descriptions indicate
  whether a command is applied immediately, on the next instance reboot, or during
  the maintenance window. The reference structure is as follows, and we list
  following some related topics from the user guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Amazon Neptune",
      api_version: "2014-10-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "rds",
      global?: false,
      protocol: "query",
      service_id: "Neptune",
      signature_version: "v4",
      signing_name: "rds",
      target_prefix: nil
    }
  end

  @doc """
  Associates an Identity and Access Management (IAM) role from an Neptune DB
  cluster.
  """
  def add_role_to_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddRoleToDBCluster", input, options)
  end

  @doc """
  Adds a source identifier to an existing event notification subscription.
  """
  def add_source_identifier_to_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon Neptune resource.

  These tags can also be used with cost allocation reporting to track cost
  associated with Amazon Neptune resources, or used in a Condition statement in an
  IAM policy for Amazon Neptune.
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a DB
  instance).
  """
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.
  """
  def copy_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a DB cluster.

  To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of
  the shared DB cluster snapshot.
  """
  def copy_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Copies the specified DB parameter group.
  """
  def copy_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBParameterGroup", input, options)
  end

  @doc """
  Creates a new Amazon Neptune DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB cluster
  as a Read Replica of another DB cluster or Amazon Neptune DB instance.

  Note that when you create a new cluster using `CreateDBCluster` directly,
  deletion protection is disabled by default (when you create a new production
  cluster in the console, deletion protection is enabled by default). You can only
  delete a DB cluster if its `DeletionProtection` field is set to `false`.
  """
  def create_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new custom endpoint and associates it with an Amazon Neptune DB
  cluster.
  """
  def create_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterEndpoint", input, options)
  end

  @doc """
  Creates a new DB cluster parameter group.

  Parameters in a DB cluster parameter group apply to all of the instances in a DB
  cluster.

  A DB cluster parameter group is initially created with the default parameters
  for the database engine used by instances in the DB cluster. To provide custom
  values for any of the parameters, you must modify the group after creating it
  using `ModifyDBClusterParameterGroup`. Once you've created a DB cluster
  parameter group, you need to associate it with your DB cluster using
  `ModifyDBCluster`. When you associate a new DB cluster parameter group with a
  running DB cluster, you need to reboot the DB instances in the DB cluster
  without failover for the new DB cluster parameter group and associated settings
  to take effect.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes before creating your first DB cluster that uses that DB cluster
  parameter group as the default parameter group. This allows Amazon Neptune to
  fully complete the create action before the DB cluster parameter group is used
  as the default for a new DB cluster. This is especially important for parameters
  that are critical when creating the default database for a DB cluster, such as
  the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups* option of
  the [Amazon Neptune console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` command to verify that your DB cluster parameter
  group has been created or modified.
  """
  def create_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster.
  """
  def create_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new DB instance.
  """
  def create_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for the
  database engine used by the DB instance. To provide custom values for any of the
  parameters, you must modify the group after creating it using
  *ModifyDBParameterGroup*. Once you've created a DB parameter group, you need to
  associate it with your DB instance using *ModifyDBInstance*. When you associate
  a new DB parameter group with a running DB instance, you need to reboot the DB
  instance without failover for the new DB parameter group and associated settings
  to take effect.

  After you create a DB parameter group, you should wait at least 5 minutes before
  creating your first DB instance that uses that DB parameter group as the default
  parameter group. This allows Amazon Neptune to fully complete the create action
  before the parameter group is used as the default for a new DB instance. This is
  especially important for parameters that are critical when creating the default
  database for a DB instance, such as the character set for the default database
  defined by the `character_set_database` parameter. You can use the *Parameter
  Groups* option of the Amazon Neptune console or the *DescribeDBParameters*
  command to verify that your DB parameter group has been created or modified.
  """
  def create_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB subnet group.

  DB subnet groups must contain at least one subnet in at least two AZs in the AWS
  Region.
  """
  def create_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an event notification subscription.

  This action requires a topic ARN (Amazon Resource Name) created by either the
  Neptune console, the SNS console, or the SNS API. To obtain an ARN with SNS, you
  must create a topic in Amazon SNS and subscribe to the topic. The ARN is
  displayed in the SNS console.

  You can specify the type of source (SourceType) you want to be notified of,
  provide a list of Neptune sources (SourceIds) that triggers the events, and
  provide a list of event categories (EventCategories) for events you want to be
  notified of. For example, you can specify SourceType = db-instance, SourceIds =
  mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup.

  If you specify both the SourceType and SourceIds, such as SourceType =
  db-instance and SourceIdentifier = myDBInstance1, you are notified of all the
  db-instance events for the specified source. If you specify a SourceType but do
  not specify a SourceIdentifier, you receive notice of the events for that source
  type for all your Neptune sources. If you do not specify either the SourceType
  nor the SourceIdentifier, you are notified of events generated from all Neptune
  sources belonging to your customer account.
  """
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEventSubscription", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.

  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and can't be recovered. Manual DB cluster snapshots of the specified DB
  cluster are not deleted.

  Note that the DB Cluster cannot be deleted if deletion protection is enabled. To
  delete it, you must first set its `DeletionProtection` field to `False`.
  """
  def delete_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a custom endpoint and removes it from an Amazon Neptune DB cluster.
  """
  def delete_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterEndpoint", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group.

  The DB cluster parameter group to be deleted can't be associated with any DB
  clusters.
  """
  def delete_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a DB cluster snapshot.

  If the snapshot is being copied, the copy operation is terminated.

  The DB cluster snapshot must be in the `available` state to be deleted.
  """
  def delete_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  The DeleteDBInstance action deletes a previously provisioned DB instance.

  When you delete a DB instance, all automated backups for that instance are
  deleted and can't be recovered. Manual DB snapshots of the DB instance to be
  deleted by `DeleteDBInstance` are not deleted.

  If you request a final DB snapshot the status of the Amazon Neptune DB instance
  is `deleting` until the DB snapshot is created. The API action
  `DescribeDBInstance` is used to monitor the status of this operation. The action
  can't be canceled or reverted once submitted.

  Note that when a DB instance is in a failure state and has a status of `failed`,
  `incompatible-restore`, or `incompatible-network`, you can only delete it when
  the `SkipFinalSnapshot` parameter is set to `true`.

  You can't delete a DB instance if it is the only instance in the DB cluster, or
  if it has deletion protection enabled.
  """
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a specified DBParameterGroup.

  The DBParameterGroup to be deleted can't be associated with any DB instances.
  """
  def delete_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBParameterGroup", input, options)
  end

  @doc """
  Deletes a DB subnet group.

  The specified database subnet group must not be associated with any DB
  instances.
  """
  def delete_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an event notification subscription.
  """
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEventSubscription", input, options)
  end

  @doc """
  Returns information about endpoints for an Amazon Neptune DB cluster.

  This operation can also return information for Amazon RDS clusters and Amazon
  DocDB clusters.
  """
  def describe_db_cluster_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterEndpoints", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions.

  If a `DBClusterParameterGroupName` parameter is specified, the list will contain
  only the description of the specified DB cluster parameter group.
  """
  def describe_db_cluster_parameter_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter group.
  """
  def describe_db_cluster_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of DB cluster snapshot attribute names and values for a manual DB
  cluster snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the AWS accounts that are authorized to copy or restore the manual DB
  cluster snapshot. If `all` is included in the list of values for the `restore`
  attribute, then the manual DB cluster snapshot is public and can be copied or
  restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  cluster snapshot, or to make the manual DB cluster snapshot public or private,
  use the `ModifyDBClusterSnapshotAttribute` API action.
  """
  def describe_db_cluster_snapshot_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeDBClusterSnapshotAttributes",
      input,
      options
    )
  end

  @doc """
  Returns information about DB cluster snapshots.

  This API action supports pagination.
  """
  def describe_db_cluster_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned DB clusters, and supports pagination.

  This operation can also return information for Amazon RDS clusters and Amazon
  DocDB clusters.
  """
  def describe_db_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available DB engines.
  """
  def describe_db_engine_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned instances, and supports pagination.

  This operation can also return information for Amazon RDS instances and Amazon
  DocDB instances.
  """
  def describe_db_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of `DBParameterGroup` descriptions.

  If a `DBParameterGroupName` is specified, the list will contain only the
  description of the specified DB parameter group.
  """
  def describe_db_parameter_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB parameter group.
  """
  def describe_db_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBParameters", input, options)
  end

  @doc """
  Returns a list of DBSubnetGroup descriptions.

  If a DBSubnetGroupName is specified, the list will contain only the descriptions
  of the specified DBSubnetGroup.

  For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def describe_db_subnet_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the cluster
  database engine.
  """
  def describe_engine_default_cluster_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeEngineDefaultClusterParameters",
      input,
      options
    )
  end

  @doc """
  Returns the default engine and system parameter information for the specified
  database engine.
  """
  def describe_engine_default_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified, for
  a specified source type.
  """
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account.

  The description for a subscription includes SubscriptionName, SNSTopicARN,
  CustomerID, SourceType, SourceID, CreationTime, and Status.

  If you specify a SubscriptionName, lists the description for that subscription.
  """
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to DB instances, DB security groups, DB snapshots, and DB
  parameter groups for the past 14 days.

  Events specific to a particular DB instance, DB security group, database
  snapshot, or DB parameter group can be obtained by providing the name as a
  parameter. By default, the past hour of events are returned.
  """
  def describe_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEvents", input, options)
  end

  @doc """
  Returns a list of orderable DB instance options for the specified engine.
  """
  def describe_orderable_db_instance_options(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, DB instances) that have at least one
  pending maintenance action.
  """
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  You can call `DescribeValidDBInstanceModifications` to learn what modifications
  you can make to your DB instance.

  You can use this information when you call `ModifyDBInstance`.
  """
  def describe_valid_db_instance_modifications(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeValidDBInstanceModifications",
      input,
      options
    )
  end

  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Read Replicas (read-only
  instances) in the DB cluster to be the primary instance (the cluster writer).

  Amazon Neptune will automatically fail over to a Read Replica, if one exists,
  when the primary instance fails. You can force a failover when you want to
  simulate a failure of a primary instance for testing. Because each instance in a
  DB cluster has its own endpoint address, you will need to clean up and
  re-establish any existing connections that use those endpoint addresses when the
  failover is complete.
  """
  def failover_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "FailoverDBCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon Neptune resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Modify a setting for a DB cluster.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request.
  """
  def modify_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the properties of an endpoint in an Amazon Neptune DB cluster.
  """
  def modify_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterEndpoint", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group.

  To modify more than one parameter, submit a list of the following:
  `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters
  can be modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters require a reboot without failover to the DB cluster associated with
  the parameter group before the change can take effect.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes before creating your first DB cluster that uses that DB cluster
  parameter group as the default parameter group. This allows Amazon Neptune to
  fully complete the create action before the parameter group is used as the
  default for a new DB cluster. This is especially important for parameters that
  are critical when creating the default database for a DB cluster, such as the
  character set for the default database defined by the `character_set_database`
  parameter. You can use the *Parameter Groups* option of the Amazon Neptune
  console or the `DescribeDBClusterParameters` command to verify that your DB
  cluster parameter group has been created or modified.
  """
  def modify_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB cluster snapshot.

  To share a manual DB cluster snapshot with other AWS accounts, specify `restore`
  as the `AttributeName` and use the `ValuesToAdd` parameter to add a list of IDs
  of the AWS accounts that are authorized to restore the manual DB cluster
  snapshot. Use the value `all` to make the manual DB cluster snapshot public,
  which means that it can be copied or restored by all AWS accounts. Do not add
  the `all` value for any manual DB cluster snapshots that contain private
  information that you don't want available to all AWS accounts. If a manual DB
  cluster snapshot is encrypted, it can be shared, but only by specifying a list
  of authorized AWS account IDs for the `ValuesToAdd` parameter. You can't use
  `all` as a value for that parameter in this case.

  To view which AWS accounts have access to copy or restore a manual DB cluster
  snapshot, or whether a manual DB cluster snapshot public or private, use the
  `DescribeDBClusterSnapshotAttributes` API action.
  """
  def modify_db_cluster_snapshot_attribute(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for a DB instance.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request. To learn what modifications you
  can make to your DB instance, call `DescribeValidDBInstanceModifications` before
  you call `ModifyDBInstance`.
  """
  def modify_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group.

  To modify more than one parameter, submit a list of the following:
  `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters
  can be modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters require a reboot without failover to the DB instance associated with
  the parameter group before the change can take effect.

  After you modify a DB parameter group, you should wait at least 5 minutes before
  creating your first DB instance that uses that DB parameter group as the default
  parameter group. This allows Amazon Neptune to fully complete the modify action
  before the parameter group is used as the default for a new DB instance. This is
  especially important for parameters that are critical when creating the default
  database for a DB instance, such as the character set for the default database
  defined by the `character_set_database` parameter. You can use the *Parameter
  Groups* option of the Amazon Neptune console or the *DescribeDBParameters*
  command to verify that your DB parameter group has been created or modified.
  """
  def modify_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBParameterGroup", input, options)
  end

  @doc """
  Modifies an existing DB subnet group.

  DB subnet groups must contain at least one subnet in at least two AZs in the AWS
  Region.
  """
  def modify_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing event notification subscription.

  Note that you can't modify the source identifiers using this call; to change
  source identifiers for a subscription, use the
  `AddSourceIdentifierToSubscription` and `RemoveSourceIdentifierFromSubscription`
  calls.

  You can see a list of the event categories for a given SourceType by using the
  **DescribeEventCategories** action.
  """
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyEventSubscription", input, options)
  end

  @doc """
  Not supported.
  """
  def promote_read_replica_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PromoteReadReplicaDBCluster", input, options)
  end

  @doc """
  You might need to reboot your DB instance, usually for maintenance reasons.

  For example, if you make certain modifications, or if you change the DB
  parameter group associated with the DB instance, you must reboot the instance
  for the changes to take effect.

  Rebooting a DB instance restarts the database engine service. Rebooting a DB
  instance results in a momentary outage, during which the DB instance status is
  set to rebooting.
  """
  def reboot_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RebootDBInstance", input, options)
  end

  @doc """
  Disassociates an Identity and Access Management (IAM) role from a DB cluster.
  """
  def remove_role_from_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveRoleFromDBCluster", input, options)
  end

  @doc """
  Removes a source identifier from an existing event notification subscription.
  """
  def remove_source_identifier_from_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "RemoveSourceIdentifierFromSubscription",
      input,
      options
    )
  end

  @doc """
  Removes metadata tags from an Amazon Neptune resource.
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group to the default value.

  To reset specific parameters submit a list of the following: `ParameterName` and
  `ApplyMethod`. To reset the entire DB cluster parameter group, specify the
  `DBClusterParameterGroupName` and `ResetAllParameters` parameters.

  When resetting the entire group, dynamic parameters are updated immediately and
  static parameters are set to `pending-reboot` to take effect on the next DB
  instance restart or `RebootDBInstance` request. You must call `RebootDBInstance`
  for every DB instance in your DB cluster that you want the updated static
  parameter to apply to.
  """
  def reset_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group to the engine/system default
  value.

  To reset specific parameters, provide a list of the following: `ParameterName`
  and `ApplyMethod`. To reset the entire DB parameter group, specify the
  `DBParameterGroup` name and `ResetAllParameters` parameters. When resetting the
  entire group, dynamic parameters are updated immediately and static parameters
  are set to `pending-reboot` to take effect on the next DB instance restart or
  `RebootDBInstance` request.
  """
  def reset_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

  If a DB snapshot is specified, the target DB cluster is created from the source
  DB snapshot with a default configuration and default security group.

  If a DB cluster snapshot is specified, the target DB cluster is created from the
  source DB cluster restore point with the same configuration as the original
  source DB cluster, except that the new DB cluster is created with the default
  security group.
  """
  def restore_db_cluster_from_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a DB cluster to an arbitrary point in time.

  Users can restore to any point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target DB cluster is created from the source
  DB cluster with the same configuration as the original DB cluster, except that
  the new DB cluster is created with the default DB security group.

  This action only restores the DB cluster, not the DB instances for that DB
  cluster. You must invoke the `CreateDBInstance` action to create DB instances
  for the restored DB cluster, specifying the identifier of the restored DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after the
  `RestoreDBClusterToPointInTime` action has completed and the DB cluster is
  available.
  """
  def restore_db_cluster_to_point_in_time(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Starts an Amazon Neptune DB cluster that was stopped using the AWS console, the
  AWS CLI stop-db-cluster command, or the StopDBCluster API.
  """
  def start_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDBCluster", input, options)
  end

  @doc """
  Stops an Amazon Neptune DB cluster.

  When you stop a DB cluster, Neptune retains the DB cluster's metadata, including
  its endpoints and DB parameter groups.

  Neptune also retains the transaction logs so you can do a point-in-time restore
  if necessary.
  """
  def stop_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDBCluster", input, options)
  end
end