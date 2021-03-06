/*
 * Copyright 2015 SURFnet BV, The Netherlands
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "AppDelegate.h"

#import "SSOService.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// iOS 9
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    BOOL urlHandled = [SSOService handleURL:url callbackScheme:@"sfoauth"];
    if (!urlHandled) {
        // Handle any other URLs
    }
    return urlHandled;
}

// iOS 8 / iOS 7
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    BOOL urlHandled = [SSOService handleURL:url callbackScheme:@"sfoauth"];
    if (!urlHandled) {
        // Handle any other URLs
    }
    return urlHandled;
}

@end
