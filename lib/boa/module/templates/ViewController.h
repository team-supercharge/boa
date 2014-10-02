//
//  <%= @prefixed_module %>ViewController.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <UIKit/UIKit.h>

#import "<%= @prefixed_module %>ModuleInterface.h"
#import "<%= @prefixed_module %>ViewInterface.h"

@interface <%= @prefixed_module %>ViewController : UIViewController <<%= @prefixed_module %>ViewInterface>

@property (nonatomic, strong) id<<%= @prefixed_module %>ModuleInterface> eventHandler;

// *** add UI events here

@end
