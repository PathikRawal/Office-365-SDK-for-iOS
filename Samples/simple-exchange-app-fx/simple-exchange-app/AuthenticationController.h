/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/

#import <Foundation/Foundation.h>
#import <ADALiOS/ADAuthenticationContext.h>
#import <ADALiOS/ADAuthenticationParameters.h>
#import <ADALiOS/ADAuthenticationSettings.h>
#import <ADALiOS/ADLogger.h>
#import <ADALiOS/ADInstanceDiscovery.h>
#import <office365_odata_base/office365_odata_base.h>

@interface AuthenticationController : NSObject

-(void) clearCredentials;
+(id)   getInstance;
-(void) initializeWithResourceId:(NSString *)resourceId completionHandler:(void (^) (bool authenticated))completionBlock;
-(ADALDependencyResolver*) getDependencyResolver;

@end