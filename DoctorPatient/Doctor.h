//
//  Doctor.h
//  DoctorPatient
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;


@interface Doctor : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * specialization;
@property (nonatomic, strong) NSMutableArray * patientList;
@property (nonatomic, strong) NSDictionary * prescriptions;
@property (nonatomic, strong) NSMutableDictionary * prescriptionGivenList;

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization;

- (BOOL)canTreatPatient:(Patient *)patient;
- (void)treatPatient:(Patient *)patient;
- (void)prescribeMedication:(Patient *)patient;

@end
