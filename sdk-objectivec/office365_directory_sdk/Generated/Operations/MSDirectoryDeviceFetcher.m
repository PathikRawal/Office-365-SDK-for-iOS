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

#import "MSDirectoryDeviceFetcher.h"
#import "MSDirectoryDirectoryObjectCollectionFetcher.h"
#import "MSDirectoryDirectoryObjectCollectionFetcher.h"


/**
* The implementation file for type MSDirectoryDeviceFetcher.
*/


@implementation MSDirectoryDeviceFetcher

-(MSDirectoryDeviceOperations*) getOperations{
	return [[MSDirectoryDeviceOperations alloc] initOperationWithUrl:self.UrlComponent parent:self.Parent];
}

-(id)initWithUrl:(NSString*)urlComponent :(id<MSODataReadable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWithUrl:urlComponent parent:parent andEntityClass : [MSDirectoryDevice class]];
}

-(NSURLSessionDataTask*) updateDevice:(id)entity withCallback:(void (^)(MSDirectoryDevice*, NSError * error))callback{
	return [super update:entity : callback];
}

-(NSURLSessionDataTask*) deleteDevice:(void (^)(int status, NSError * error))callback{
	return [super delete:callback];
}


-(MSDirectoryDirectoryObjectCollectionFetcher*) getregisteredOwners{
    return [[MSDirectoryDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredOwners" parent:self andEntityClass:[MSDirectoryDirectoryObject class]];
}


-(MSDirectoryDirectoryObjectCollectionFetcher*) getregisteredUsers{
    return [[MSDirectoryDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredUsers" parent:self andEntityClass:[MSDirectoryDirectoryObject class]];
}


@end