//
//  UkrainianCarShops.h
//  Lesson_4_HW
//
//  Created by Andrey Proskurin on 22.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const cityNameKey      = @"cityName";
static NSString *const carShopKey       = @"carShop";
static NSString *const brandNameKey     = @"brandName";
static NSString *const modelsKey        = @"models";
static NSString *const carModelKey      = @"carModel";
static NSString *const carParametersKey = @"carParameters";
static NSString *const carColorKey      = @"carColor";
static NSString *const carPriceKey      = @"carPrice";

@interface UkrainianCarShops : NSObject

+ (NSArray *) generateCitiesWithShops;

@end
