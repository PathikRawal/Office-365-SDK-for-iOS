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
#import "MSSharePointFile.h"
#import "MSSharePointFileFetcher.h"

/**
* The header for type MSSharePointFileCollectionFetcher.
*/

@protocol MSSharePointFileCollectionFetcher

@optional
-(NSURLSessionDataTask*)read:(void (^)(NSArray<MSSharePointFile> *files, NSError *error))callback;
-(MSSharePointFileFetcher*)select : (NSString*) params;
-(MSSharePointFileFetcher*)filter : (NSString*) params;
-(MSSharePointFileFetcher*)top : (int) value;
-(MSSharePointFileFetcher*)skip : (int) value;
-(MSSharePointFileFetcher*)expand : (NSString*) value;
-(MSSharePointFileFetcher*)orderBy : (NSString*) params;

@end

@interface MSSharePointFileCollectionFetcher : MSODataCollectionFetcher<MSSharePointFileCollectionFetcher>

-(id)initWithUrl:(NSString *)urlComponent parent:(id<MSODataReadable>)parent;

-(NSURLSessionDataTask*)addFile:(MSSharePointFile* )entity withCallback:(void (^)(MSSharePointFile *file, NSError *e))callback;

-(MSSharePointFileFetcher*)getById:(NSString *)Id;

@end