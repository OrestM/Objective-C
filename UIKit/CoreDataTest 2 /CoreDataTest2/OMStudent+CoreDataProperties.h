//
//  OMStudent+CoreDataProperties.h
//  CoreDataTest2
//
//  Created by Admin on 3/22/16.
//  Copyright © 2016 Admin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "OMStudent.h"

@class OMCar, OMUniversity, OMCourse;

NS_ASSUME_NONNULL_BEGIN

@interface OMStudent (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *dateBirthd;
@property (nullable, nonatomic, retain) NSString *firstName;
@property (nullable, nonatomic, retain) NSString *lastName;
@property (nullable, nonatomic, retain) NSNumber *score;
@property (nullable, nonatomic, retain) OMCar *car;
@property (nullable, nonatomic, retain) OMUniversity *university;
@property (nullable, nonatomic, retain) NSSet<OMCourse *> *courses;

@end

@interface OMStudent (CoreDataGeneratedAccessors)

- (void)addCoursesObject:(OMCourse *)value;
- (void)removeCoursesObject:(OMCourse *)value;
- (void)addCourses:(NSSet<OMCourse *> *)values;
- (void)removeCourses:(NSSet<OMCourse *> *)values;

@end

NS_ASSUME_NONNULL_END
