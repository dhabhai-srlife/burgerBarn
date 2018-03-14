//
//  main.m
//  burgerBarn
//
//  Created by ITMAC1 on 1/26/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *orderDict = @{
                                    @"burgers": @5,
                                    @"shakes": @3,
                                    @"cutomers": @4,
                                    @"isTakeOut": @NO,
                                    @"subTotal": @0.0,
                                    };
        
        float burgerPrice = 4;
        float shakePrice = 3;
        float subTotal;
        
        subTotal = (burgerPrice * [[orderDict valueForKey:@"burgers"]intValue]) + (shakePrice * [[orderDict valueForKey:@"shakes"]intValue]);
        NSMutableDictionary *outputDict = [NSMutableDictionary dictionaryWithDictionary:orderDict];
        [outputDict setValue:@(subTotal) forKey:@"subTotal"];
    
    }
    return 0;
}
