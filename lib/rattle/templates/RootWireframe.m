//
//  RootWireframe.m
//  foldparty
//
//  Created by Balazs on 11/09/14.
//
//

#import "RootWireframe.h"

@interface RootWireframe ()

@property (nonatomic, strong) UINavigationController *navController;

@end

@implementation RootWireframe

- (id)initWithWindow:(UIWindow *)window
{
    if ((self = [super init]))
    {
        // allocate navigationcontroller
        self.navController = [[UINavigationController alloc] init];
        window.rootViewController = self.navController;
        
        // set options
        [self.navController setNavigationBarHidden:YES];
    }
    
    return self;
}

- (void)pushViewController:(UIViewController*)viewController fromController:(UIViewController *)fromController
{
    [self.navController pushViewController:viewController animated:NO];
}

- (void)popToViewController:(UIViewController*)viewController fromController:(UIViewController *)fromController
{
    [self.navController popToViewController:viewController animated:NO];
}

- (bool)containsViewController:(UIViewController*)viewController
{
    return [[self.navController childViewControllers] containsObject:viewController];
}

@end
