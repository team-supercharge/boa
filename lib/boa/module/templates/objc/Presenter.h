//
//  <%= @prefixed_module %>Presenter.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

#import "<%= @prefixed_module %>Interactor.h"
#import "<%= @prefixed_module %>Wireframe.h"
#import "<%= @prefixed_module %>ViewInterface.h"

@class <%= @prefixed_module %>Wireframe;
@class <%= @prefixed_module %>Interactor;

/**
 Display logic for the <%= @module %> module.
 */
@interface <%= @prefixed_module %>Presenter : NSObject <<%= @prefixed_module %>ModuleInterface>

@property (nonatomic, strong) <%= @prefixed_module %>Interactor *interactor;
@property (nonatomic, weak) <%= @prefixed_module %>Wireframe *wireframe;

@property (nonatomic, weak) UIViewController<<%= @prefixed_module %>ViewInterface> *userInterface;

@end
