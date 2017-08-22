//
//  CarModel.m
//  Lesson_4_HW
//
//  Created by Andrey Proskurin on 20.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarModel.h"
#import "Parameters.h"
#import "UkrainianCarShops.h"

@implementation CarModel

- (void)printDescription {
    
    NSLog(@"Descriptoion: City - %@; Brand - \"%@;\" Model - %@; Parameters of the model: Color: %@ & Price = %@ $",
          self.city, self.brand, self.carModel, self.parameters.color, self.parameters.price);
}

+ (void)searchByColor:(NSArray *)ukraineCitiesSet {
    
    for (NSInteger cityIndex = 0; cityIndex < ukraineCitiesSet.count; cityIndex++)
    {
        NSMutableArray *redAndYellowCars = [NSMutableArray array];
        
        NSString *currentCityName = ukraineCitiesSet[cityIndex][cityNameKey];
        NSArray *shopsOfCurrentCity = ukraineCitiesSet[cityIndex][carShopKey];
        
        for (NSInteger carShopIndex = 0; carShopIndex < shopsOfCurrentCity.count; carShopIndex++)
        {
            NSString *currentShopName = shopsOfCurrentCity[carShopIndex][carShopKey];
            NSArray *modelsOfCurrentShop = shopsOfCurrentCity[carShopIndex][modelsKey];
            
            for (NSInteger modelIndex = 0; modelIndex < modelsOfCurrentShop.count; modelIndex++)
            {
                NSString *currentModelName = modelsOfCurrentShop[modelIndex][carModelKey];
                
                NSDictionary *currentModelParameters = modelsOfCurrentShop[modelIndex][carParametersKey];
                NSString *color = currentModelParameters[carColorKey];
                
                if ([color isEqualToString:@"Yellow"] || [color isEqualToString:@"Red"])
                {
                    NSNumber *price = currentModelParameters[carPriceKey];
                    
                    Parameters *parameters = [Parameters new];
                    parameters.color = color;
                    parameters.price = price;
                    
                    CarModel *car = [CarModel new];
                    car.city = currentCityName;
                    car.brand = currentShopName;
                    car.carModel = currentModelName;
                    car.parameters = parameters;
                    
                    [redAndYellowCars addObject:car];
                }
            }
        }
        
        if (redAndYellowCars.count > 0)
        {
            for (NSInteger i = 0; i < redAndYellowCars.count; i++)
            {
                CarModel *carModel = redAndYellowCars[i];
                [carModel printDescription];
            }
        }
        else
        {
            NSLog(@"There aren't any cars with red or yellow color!");
        }
    }
}

@end
