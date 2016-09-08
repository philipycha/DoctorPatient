//
//  main.m
//  DoctorPatient
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] initWithName:@"John" Age:@21 ValidHealthCard:YES Symptoms:@[@"fever"]];
        
        [patient visitDoctor:doctor];
        
        
        
        
        
    }
    return 0;
}
