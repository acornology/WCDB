//
//  Message.m
//  Demo
//
//  Created by 唐佳强 on 2022/3/27.
//

#import "Message+WCTTableCoding.h"

@implementation Message

WCDB_IMPLEMENTATION(Message)
WCDB_SYNTHESIZE(Message, localID)
WCDB_SYNTHESIZE(Message, content)
WCDB_SYNTHESIZE(Message, createTime)
WCDB_SYNTHESIZE(Message, modifiedTime)

WCDB_PRIMARY(Message, localID)

WCDB_INDEX(Message, "_index", createTime)

@end
