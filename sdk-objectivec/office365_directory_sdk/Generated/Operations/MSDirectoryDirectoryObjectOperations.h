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

#import <office365_odata_base/office365_odata_base.h>
#import "MSDirectoryDirectoryObject.h"


#import "MSDirectoryDirectoryObject.h"

/**
* The header for type MSDirectoryDirectoryObjectOperations.
*/

@interface MSDirectoryDirectoryObjectOperations : MSODataOperations

-(id)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent;

-(NSURLSessionDataTask*)checkMemberGroups : (NSMutableArray *) groupIds : (void (^)(NSArray*, MSODataException *error))callback;

-(NSURLSessionDataTask*)getMemberGroups : (bool) securityEnabledOnly : (void (^)(NSArray*, MSODataException *error))callback;

-(NSURLSessionDataTask*)getMemberObjects : (bool) securityEnabledOnly : (void (^)(NSArray*, MSODataException *error))callback;

@end