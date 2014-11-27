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
#import "MSOutlookFolder.h"
#import "MSOutlookFolderFetcher.h"

/**
* The header for type MSOutlookFolderCollectionFetcher.
*/

@protocol MSOutlookFolderCollectionFetcher

@optional
-(NSURLSessionDataTask*)read:(void (^)(NSArray<MSOutlookFolder> *folders, NSError *error))callback;
-(MSOutlookFolderFetcher*)select : (NSString*) params;
-(MSOutlookFolderFetcher*)filter : (NSString*) params;
-(MSOutlookFolderFetcher*)top : (int) value;
-(MSOutlookFolderFetcher*)skip : (int) value;
-(MSOutlookFolderFetcher*)expand : (NSString*) value;
-(MSOutlookFolderFetcher*)orderBy : (NSString*) params;

@end

@interface MSOutlookFolderCollectionFetcher : MSODataCollectionFetcher<MSOutlookFolderCollectionFetcher>

-(id)initWithUrl:(NSString *)urlComponent parent:(id<MSODataReadable>)parent;

-(NSURLSessionDataTask*)addFolder:(MSOutlookFolder* )entity withCallback:(void (^)(MSOutlookFolder *folder, NSError *e))callback;

-(MSOutlookFolderFetcher*)getById:(NSString *)Id;

@end