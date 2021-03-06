//
//  Patient.m
//  DoctorPatient
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name Age:(NSNumber *)age ValidHealthCard:(BOOL)validHealthCard Symptoms:(NSArray *)symptoms
{
    self = [super init];
    if (self) {
        
        _name = name;
        _age = age;
        _validHealthCard = validHealthCard;
        _symptoms = symptoms;
        
        
    }
    
    return self;
}

- (BOOL)isValidHealthCard{
    
    if (!self.validHealthCard) {
        
        NSLog(@"invalid health card");
        
        return NO;
        
    } else {
        
        NSLog(@"health card valid");
        
        return YES;
        
    }
}

- (void)visitDoctor:(Doctor *)doctor{
    
    if ([doctor canTreatPatient:self]) {
        
        [doctor treatPatient:self];
        
        NSLog(@"Go to doctor");
        
    }
    
}

- (void)requestMedication:(Doctor *)doctor{

    [doctor prescribeMedication:self];
    
    
}









@end
