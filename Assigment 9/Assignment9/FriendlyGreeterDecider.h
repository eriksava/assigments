//
//  FriendlyGreeterDeligate.h
//  Foodtruck
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

@interface FriendlyGreeterDecider: NSObject <GreeterDelegate>

- (BOOL) shouldSayHello;

@end
