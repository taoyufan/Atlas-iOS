//
//  LYRUITestUtilities.h
//  LayerUIKit
//
//  Created by Kevin Coleman on 12/16/14.
//
//

#import <Foundation/Foundation.h>
#import "LYRClientMock.h"

// Testing Imports
#import <OCMock/OCMock.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import "LYRCountDownLatch.h"
#import "KIFTestCase.h"
#import <KIF/KIF.h>
#import "KIFSystemTestActor+ViewControllerActions.h"

@interface LYRUITestUtilities : NSObject

+ (LYRClientMock *)layerClientMock;

@end
