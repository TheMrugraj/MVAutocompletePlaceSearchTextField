//
//  MVPlaceSearchTextField.h
//  PlaceSearchAPIDEMO
//
//  Created by Mrugrajsinh Vansadia on 26/04/14.
//  Copyright (c) 2014 Mrugrajsinh Vansadia. All rights reserved.
//



#import <Foundation/Foundation.h>
#import "MLPAutoCompleteTextField.h"
#import "MVPlaceSearchTextField.h"
#import "PlaceObject.h"
#import <GoogleMaps/GoogleMaps.h>

@protocol PlaceSearchTextFieldDelegate <NSObject>
-(void)placeSearchResponseForSelectedPlace:(GMSPlace*)responseDict;
-(void)placeSearchWillShowResult;
-(void)placeSearchWillHideResult;
-(void)placeSearchResultCell:(UITableViewCell*)cell withPlaceObject:(PlaceObject*)placeObject atIndex:(NSInteger)index;
@end

@interface MVPlaceSearchTextField : MLPAutoCompleteTextField
@property(nonatomic,strong)NSString *strApiKey;

@property(nonatomic,strong)IBOutlet id<PlaceSearchTextFieldDelegate>placeSearchDelegate;
@end
