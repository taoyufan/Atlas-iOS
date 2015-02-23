//
//  AppDelegate.m
//  Atlas Storyboard
//
//  Created by Kevin Coleman on 2/11/15.
//  Copyright (c) 2015 Layer. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
#import "StoryboardAppDelegate.h"
#import "LayerKitMock.h"
#import "ATLTestConversationListViewController.h"
#import "ATLSampleConversationListViewController.h"
#import <Atlas/Atlas.h>

@interface StoryboardAppDelegate ()

@end

@implementation StoryboardAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    LYRUserMock *mockUser = [LYRUserMock userWithMockUserName:LYRClientMockFactoryNameRussell];
    LYRClientMock *layerClient = [LYRClientMock layerClientMockWithAuthenticatedUserID:mockUser.participantIdentifier];
    [[LYRMockContentStore sharedStore] hydrateConversationsForAuthenticatedUserID:layerClient.authenticatedUserID count:10];
    
    ATLTestConversationListViewController *controller = (ATLTestConversationListViewController *)[[[application delegate] window] rootViewController];
    [controller setLayerClient:layerClient];
    
    return YES;
}


@end
