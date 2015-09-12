//
//  PlaceDetail.h
//  PlaceSearchAPIDEMO
//
//  Created by Mrugrajsinh Vansadia on 26/04/14.
//  Copyright (c) 2014 Mrugrajsinh Vansadia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>

@protocol PlaceDetailDelegate <NSObject>

-(void)placeDetailForReferance:(NSString*)referance didFinishWithResult:(GMSPlace*)resultDict;
@end

@interface PlaceDetail : NSObject{
    NSString *aStrApiKey;
}

@property(nonatomic,strong)id <PlaceDetailDelegate> delegate;
-(id)initWithApiKey:(NSString*)ApiKey;
-(void)getPlaceDetailForReferance:(NSString*)strReferance;
@end
