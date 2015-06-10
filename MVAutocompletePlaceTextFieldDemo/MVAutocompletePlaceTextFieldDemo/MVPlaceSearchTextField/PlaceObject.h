//
//  PlaceObject.h
//  PlaceSearchAPIDEMO
//
//  Created by Mrugrajsinh Vansadia on 25/04/14.
//  Copyright (c) 2014 Mrugrajsinh Vansadia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MLPAutoCompletionObject.h"
@interface PlaceObject : NSObject<MLPAutoCompletionObject>
@property(nonatomic,strong)NSDictionary *userInfo;
- (id)initWithPlaceName:(NSString *)name;

@end
