//
//  Patient.h
//  DoctorPatient
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSNumber * age;
@property (nonatomic, assign) BOOL validHealthCard;
@property (nonatomic, strong) NSArray * symptoms;

- (instancetype)initWithName:(NSString *)name Age:(NSNumber *)age ValidHealthCard:(BOOL)validHealthCard Symptoms:(NSArray *)symptoms;

- (BOOL)isValidHealthCard;
- (void)visitDoctor:(Doctor *)doctor;
- (void)requestMedication:(Doctor *)doctor;



@end
