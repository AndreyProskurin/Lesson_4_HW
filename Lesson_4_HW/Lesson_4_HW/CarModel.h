//
//  CarModel.h
//  Lesson_4_HW
//
//  Created by Andrey Proskurin on 20.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Parameters;

@interface CarModel : NSObject

@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSString *modelName;
@property (strong, nonatomic) Parameters *parameters;

- (void)printDescription;

@end
