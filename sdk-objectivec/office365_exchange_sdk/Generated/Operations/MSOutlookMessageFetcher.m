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

#import "MSOutlookMessageFetcher.h"
#import "MSOutlookAttachmentCollectionFetcher.h"


/**
* The implementation file for type MSOutlookMessageFetcher.
*/


@implementation MSOutlookMessageFetcher

-(MSOutlookMessageOperations*) getOperations{
	return [[MSOutlookMessageOperations alloc] initOperationWithUrl:self.UrlComponent parent:self.Parent];
}

-(id)initWithUrl:(NSString*)urlComponent :(id<MSODataExecutable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWithUrl:urlComponent parent:parent andEntityClass : [MSOutlookMessage class]];
}

-(NSURLSessionDataTask*) updateMessage:(id)entity withCallback:(void (^)(MSOutlookMessage*, MSODataException * error))callback{
	return [super update:entity : callback];
}

-(NSURLSessionDataTask*) deleteMessage:(void (^)(int status, MSODataException * error))callback{
	return [super delete:callback];
}


-(MSOutlookAttachmentCollectionFetcher*) getAttachments{
    return [[MSOutlookAttachmentCollectionFetcher alloc] initWithUrl:@"Attachments" parent:self andEntityClass:[MSOutlookAttachment class]];
}

-(MSOutlookAttachmentFetcher*) getAttachmentsById : (NSString*)_id{
    return [[[MSOutlookAttachmentCollectionFetcher alloc] initWithUrl:@"Attachments" parent:self andEntityClass:[MSOutlookAttachment class]] getById:_id];
}

@end