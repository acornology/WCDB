//
//  ViewController.m
//  Demo
//
//  Created by 唐佳强 on 2022/3/27.
//

#import "ViewController.h"
//#import <WCDB/WCDB.h>
//#import "Message.h"
#import <sqlite3.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSArray<NSString *> *resultArray = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, NO);
//    NSLog(@"%@", resultArray);
    NSString *homeDirectory = NSHomeDirectory();
    homeDirectory = [homeDirectory stringByAppendingPathComponent:@"test.db"];
    NSLog(@"%@", homeDirectory);
//    WCTDatabase *database = [[WCTDatabase alloc] initWithPath:@"~/test.db"];
//    [database createTableAndIndexesOfName:@"Message" withClass:Message.class];
//    [database close];
    sqlite3 *database = NULL;
    sqlite3 *databaseDup = NULL;
    int result = sqlite3_open(homeDirectory.UTF8String, &database);
    if (result == SQLITE_OK) {
        result = sqlite3_open(homeDirectory.UTF8String, &databaseDup);
        NSAssert(result == SQLITE_OK, @"error");
        result = sqlite3_close(databaseDup);
        NSAssert(result == SQLITE_OK, @"error");
//        int index = 0;
//        const char *compileOption = NULL;
//        while ((compileOption = sqlite3_compileoption_get(index++)) != NULL) {
//            NSLog(@"%s", compileOption);
//        }
        result = sqlite3_close(database);
        NSAssert(result == SQLITE_OK, @"error");
    }
}


@end
