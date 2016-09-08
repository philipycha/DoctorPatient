//
//  Doctor.m
//  DoctorPatient
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization


{
    self = [super init];
    if (self) {
        
        _name = name;
        _specialization = specialization;
        _patientList = [[NSMutableArray alloc] init];
        
    }
    
    return self;
}

- (BOOL)canTreatPatient:(Patient *)patient {
    
    
    if (patient.validHealthCard) {
        
        NSLog(@"I can treat you");
        return YES;
        
    } else {
        
        NSLog(@"health card invalid, I can't treat you");
        return NO;
        
    }
}

-(void)treatPatient:(Patient *)patient {
    
    if ([self canTreatPatient:patient]) {
        
        [self.patientList addObject:patient];
        
    }
}

//-(BOOL)visitDoctor:(Patient *) patient
//{
//    if([self canTreatPatient:patient])
//    {
//        NSLog(@" ");
//        return YES;
//    }
//    else
//    {
//        NSLog(@" ");
//        return NO;
//    }
//}




@end
