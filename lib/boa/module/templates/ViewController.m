//
//  <%= @prefixed_module %>ViewController.m
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import "<%= @prefixed_module %>ViewController.h"

@interface <%= @prefixed_module %>ViewController ()

@end

@implementation <%= @prefixed_module %>ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

#pragma mark - <%= @prefixed_module %>ViewInterface methods

// *** implement view_interface methods here

#pragma mark - Button event handlers

// ** handle UI events here

@end
