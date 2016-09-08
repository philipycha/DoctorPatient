//
//  Patient.h
//  DoctorPatient
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSNumber * age;
@property (nonatomic, strong) NSString * validHealthCard;


//-(void)visitDoctor;
- (BOOL)isValidHealthCard


@end
