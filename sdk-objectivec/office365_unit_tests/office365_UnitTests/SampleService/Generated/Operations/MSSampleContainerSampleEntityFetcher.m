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

#import "MSSampleContainerSampleEntityFetcher.h"
/**
* The implementation file for type MSSampleContainerSampleEntityFetcher.
*/


#import "MSSampleContainerAnotherEntityCollectionFetcher.h"
#import "MSSampleContainerAnotherEntityFetcher.h"



@implementation MSSampleContainerSampleEntityFetcher

-(MSSampleContainerSampleEntityOperations*) getOperations{
	return [[MSSampleContainerSampleEntityOperations alloc] initOperationWithUrl:self.UrlComponent parent:self.Parent];
}

-(id)initWithUrl:(NSString*)urlComponent :(id<MSODataExecutable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWithUrl:urlComponent parent:parent andEntityClass : [MSSampleContainerSampleEntity class]];
}

-(NSURLSessionDataTask*) updateSampleEntity:(id)entity withCallback:(void (^)(MSSampleContainerSampleEntity*, MSODataException * error))callback{
	return [super update:entity : callback];
}

-(NSURLSessionDataTask*) deleteSampleEntity:(void (^)(int status, MSODataException * error))callback{
	return [super delete:callback];
}


-(MSSampleContainerAnotherEntityCollectionFetcher*) getNavigations{
    return [[MSSampleContainerAnotherEntityCollectionFetcher alloc] initWithUrl:@"Navigations" parent:self andEntityClass:[MSSampleContainerAnotherEntity class]];
}

-(id<MSSampleContainerAnotherEntityFetcher>) getNavigationsById : (NSString*)_id{
    return [[[MSSampleContainerAnotherEntityCollectionFetcher alloc] initWithUrl:@"Navigations" parent:self andEntityClass:[MSSampleContainerAnotherEntity class]] getById:_id];
}

@end