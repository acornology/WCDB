//
//  Message.h
//  Demo
//
//  Created by 唐佳强 on 2022/3/27.
//

#import <Foundation/Foundation.h>

//NS_ASSUME_NONNULL_BEGIN

//Message.h
@interface Message : NSObject

@property int localID;
@property(retain) NSString *content;
@property(retain) NSDate *createTime;
@property(retain) NSDate *modifiedTime;
@property(assign) int unused; //You can only define the properties you need

@end

//NS_ASSUME_NONNULL_END
