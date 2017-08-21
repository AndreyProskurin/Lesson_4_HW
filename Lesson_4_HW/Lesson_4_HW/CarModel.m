//
//  CarModel.m
//  Lesson_4_HW
//
//  Created by Andrey Proskurin on 20.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarModel.h"
#import "Parameters.h"

@implementation CarModel

- (void)printDescription {
    
    NSLog(@"Discriptoion: Brand - %@, Model - %@, Parameters of car: %@", self.brand, self.modelName, self.parameters);
}

@end
