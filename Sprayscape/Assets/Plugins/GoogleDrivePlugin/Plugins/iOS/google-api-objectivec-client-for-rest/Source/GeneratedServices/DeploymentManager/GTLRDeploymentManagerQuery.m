// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Cloud Deployment Manager API (deploymentmanager/v2)
// Description:
//   Declares, configures, and deploys complex solutions on Google Cloud
//   Platform.
// Documentation:
//   https://cloud.google.com/deployment-manager/

#import "GTLRDeploymentManagerQuery.h"

#import "GTLRDeploymentManagerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// createPolicy
NSString * const kGTLRDeploymentManagerCreatePolicyAcquire     = @"ACQUIRE";
NSString * const kGTLRDeploymentManagerCreatePolicyCreateOrAcquire = @"CREATE_OR_ACQUIRE";

// deletePolicy
NSString * const kGTLRDeploymentManagerDeletePolicyAbandon = @"ABANDON";
NSString * const kGTLRDeploymentManagerDeletePolicyDelete  = @"DELETE";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRDeploymentManagerQuery

@dynamic fields;

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsCancelPreview

@dynamic deployment, project;

+ (instancetype)queryWithObject:(GTLRDeploymentManager_DeploymentsCancelPreviewRequest *)object
                        project:(NSString *)project
                     deployment:(NSString *)deployment {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}/cancelPreview";
  GTLRDeploymentManagerQuery_DeploymentsCancelPreview *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.deployments.cancelPreview";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsDelete

@dynamic deployment, project;

+ (instancetype)queryWithProject:(NSString *)project
                      deployment:(NSString *)deployment {
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}";
  GTLRDeploymentManagerQuery_DeploymentsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.deployments.delete";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsGet

@dynamic deployment, project;

+ (instancetype)queryWithProject:(NSString *)project
                      deployment:(NSString *)deployment {
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}";
  GTLRDeploymentManagerQuery_DeploymentsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_Deployment class];
  query.loggingName = @"deploymentmanager.deployments.get";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsInsert

@dynamic preview, project;

+ (instancetype)queryWithObject:(GTLRDeploymentManager_Deployment *)object
                        project:(NSString *)project {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"{project}/global/deployments";
  GTLRDeploymentManagerQuery_DeploymentsInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.deployments.insert";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsList

@dynamic filter, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"{project}/global/deployments";
  GTLRDeploymentManagerQuery_DeploymentsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRDeploymentManager_DeploymentsListResponse class];
  query.loggingName = @"deploymentmanager.deployments.list";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsPatch

@dynamic createPolicy, deletePolicy, deployment, preview, project;

+ (instancetype)queryWithObject:(GTLRDeploymentManager_Deployment *)object
                        project:(NSString *)project
                     deployment:(NSString *)deployment {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}";
  GTLRDeploymentManagerQuery_DeploymentsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.deployments.patch";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsStop

@dynamic deployment, project;

+ (instancetype)queryWithObject:(GTLRDeploymentManager_DeploymentsStopRequest *)object
                        project:(NSString *)project
                     deployment:(NSString *)deployment {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}/stop";
  GTLRDeploymentManagerQuery_DeploymentsStop *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.deployments.stop";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_DeploymentsUpdate

@dynamic createPolicy, deletePolicy, deployment, preview, project;

+ (instancetype)queryWithObject:(GTLRDeploymentManager_Deployment *)object
                        project:(NSString *)project
                     deployment:(NSString *)deployment {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}";
  GTLRDeploymentManagerQuery_DeploymentsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.deployments.update";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_ManifestsGet

@dynamic deployment, manifest, project;

+ (instancetype)queryWithProject:(NSString *)project
                      deployment:(NSString *)deployment
                        manifest:(NSString *)manifest {
  NSArray *pathParams = @[
    @"deployment", @"manifest", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}/manifests/{manifest}";
  GTLRDeploymentManagerQuery_ManifestsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.deployment = deployment;
  query.manifest = manifest;
  query.expectedObjectClass = [GTLRDeploymentManager_Manifest class];
  query.loggingName = @"deploymentmanager.manifests.get";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_ManifestsList

@dynamic deployment, filter, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                      deployment:(NSString *)deployment {
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}/manifests";
  GTLRDeploymentManagerQuery_ManifestsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_ManifestsListResponse class];
  query.loggingName = @"deploymentmanager.manifests.list";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_OperationsGet

@dynamic operation, project;

+ (instancetype)queryWithProject:(NSString *)project
                       operation:(NSString *)operation {
  NSArray *pathParams = @[
    @"operation", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/operations/{operation}";
  GTLRDeploymentManagerQuery_OperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.operation = operation;
  query.expectedObjectClass = [GTLRDeploymentManager_Operation class];
  query.loggingName = @"deploymentmanager.operations.get";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_OperationsList

@dynamic filter, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"{project}/global/operations";
  GTLRDeploymentManagerQuery_OperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRDeploymentManager_OperationsListResponse class];
  query.loggingName = @"deploymentmanager.operations.list";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_ResourcesGet

@dynamic deployment, project, resource;

+ (instancetype)queryWithProject:(NSString *)project
                      deployment:(NSString *)deployment
                        resource:(NSString *)resource {
  NSArray *pathParams = @[
    @"deployment", @"project", @"resource"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}/resources/{resource}";
  GTLRDeploymentManagerQuery_ResourcesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.deployment = deployment;
  query.resource = resource;
  query.expectedObjectClass = [GTLRDeploymentManager_Resource class];
  query.loggingName = @"deploymentmanager.resources.get";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_ResourcesList

@dynamic deployment, filter, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                      deployment:(NSString *)deployment {
  NSArray *pathParams = @[
    @"deployment", @"project"
  ];
  NSString *pathURITemplate = @"{project}/global/deployments/{deployment}/resources";
  GTLRDeploymentManagerQuery_ResourcesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.deployment = deployment;
  query.expectedObjectClass = [GTLRDeploymentManager_ResourcesListResponse class];
  query.loggingName = @"deploymentmanager.resources.list";
  return query;
}

@end

@implementation GTLRDeploymentManagerQuery_TypesList

@dynamic filter, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"{project}/global/types";
  GTLRDeploymentManagerQuery_TypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRDeploymentManager_TypesListResponse class];
  query.loggingName = @"deploymentmanager.types.list";
  return query;
}

@end