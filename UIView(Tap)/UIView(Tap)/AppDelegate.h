//
//  AppDelegate.h
//  UIView(Tap)
//
//  Created by 开心粮票 on 2017/10/23.
//  Copyright © 2017年 eeee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

