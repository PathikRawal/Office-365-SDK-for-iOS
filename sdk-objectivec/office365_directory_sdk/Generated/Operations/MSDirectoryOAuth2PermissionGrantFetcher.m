/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * Licensed under the Apache License, Version 2.0.
 * See License.txt in the project root for license information.
 *
 * Warning: This code was generated automatically. Edits will be overwritten.
 * To make changes to this code, please make changes to the generation framework itself:
 * https://github.com/MSOpenTech/odata-codegen
 *******************************************************************************/

#import "MSDirectoryOAuth2PermissionGrantFetcher.h"


/**
* The implementation file for type MSDirectoryOAuth2PermissionGrantFetcher.
*/


@implementation MSDirectoryOAuth2PermissionGrantFetcher

-(MSDirectoryOAuth2PermissionGrantOperations*) getOperations{
	return [[MSDirectoryOAuth2PermissionGrantOperations alloc] initOperationWithUrl:self.UrlComponent parent:self.Parent];
}

-(id)initWithUrl:(NSString*)urlComponent :(id<MSODataReadable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWithUrl:urlComponent parent:parent andEntityClass : [MSDirectoryOAuth2PermissionGrant class]];
}

-(NSURLSessionDataTask*) updateOAuth2PermissionGrant:(id)entity withCallback:(void (^)(MSDirectoryOAuth2PermissionGrant*, NSError * error))callback{
	return [super update:entity : callback];
}

-(NSURLSessionDataTask*) deleteOAuth2PermissionGrant:(void (^)(int status, NSError * error))callback{
	return [super delete:callback];
}


@end