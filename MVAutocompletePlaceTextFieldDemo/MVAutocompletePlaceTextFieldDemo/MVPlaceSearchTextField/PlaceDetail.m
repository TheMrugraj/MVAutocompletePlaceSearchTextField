//
//  PlaceDetail.m
//  PlaceSearchAPIDEMO
//
//  Created by Mrugrajsinh Vansadia on 26/04/14.
//  Copyright (c) 2014 Mrugrajsinh Vansadia. All rights reserved.
//

#import "PlaceDetail.h"

#define apiURL @"https://maps.googleapis.com/maps/api/place/details/json?reference=%@&sensor=true&key=%@"
#define apiURLWithoutKey @"https://maps.googleapis.com/maps/api/place/details/json?reference=%@&sensor=true"
@implementation PlaceDetail
-(id)initWithApiKey:(NSString *)ApiKey{
    
    self = [super init];
    if (self) {
        aStrApiKey=ApiKey;
    }
    return self;
}

-(void)getPlaceDetailForReferance:(NSString*)strReferance{
    NSString *aStrUrl=aStrApiKey?[NSString stringWithFormat:apiURL,strReferance,aStrApiKey]:[NSString stringWithFormat:apiURLWithoutKey,strReferance];
    NSURL *aUrl=[NSURL URLWithString:aStrUrl];
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_async(queue, ^{
        NSMutableDictionary *aResultDict=[self stringWithUrl:aUrl].mutableCopy;
        [_delegate placeDetailForReferance:strReferance didFinishWithResult:aResultDict];
    });
    
}

- (NSDictionary *)stringWithUrl:(NSURL *)url
{
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url
                                                cachePolicy:NSURLRequestReturnCacheDataElseLoad
                                            timeoutInterval:30];
    // Fetch the JSON response
    NSData *urlData;
    NSURLResponse *response;
    NSError *error;
    
    // Make synchronous request
    urlData = [NSURLConnection sendSynchronousRequest:urlRequest
                                    returningResponse:&response
                                                error:&error];
    if(urlData){
        // Construct a String around the Data from the response
        NSDictionary *aDict=[NSJSONSerialization JSONObjectWithData:urlData options:NSJSONReadingAllowFragments error:&error];
        return aDict;
    }else{return nil;}
    
}
@end
