//
//  PlaceObject.m
//  PlaceSearchAPIDEMO
//
//  Created by Mrugrajsinh Vansadia on 25/04/14.
//  Copyright (c) 2014 Mrugrajsinh Vansadia. All rights reserved.
//

#import "PlaceObject.h"
@interface PlaceObject ()
@property (strong) NSString *placeName;
@end

@implementation PlaceObject
-(id)initWithPlaceName:(NSString *)name{
    self = [super init];
    if (self) {
        [self setPlaceName:name];
    }
    return self;
}

-(NSString *)autocompleteString{
    return self.placeName;
}
@end
