//
//  main.m
//  Lesson_4_HW
//
//  Created by Andrey Proskurin on 20.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"
#import "Parameters.h"
#import "UkrainianCarShops.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray *result = [NSArray array];
        result = [UkrainianCarShops generateCitiesWithShops];
    
        [CarModel searchByColor:result];
    }
    return 0;
}
