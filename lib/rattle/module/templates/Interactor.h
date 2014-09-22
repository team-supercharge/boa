//
//  <%= @module %>Interactor.h
//  <%= @project_name %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @module %>Presenter.h"
#import "<%= @module %>DataManager.h"

@class <%= @module %>Presenter;

@interface <%= @module %>Interactor : NSObject

@property (nonatomic, strong) <%= @module %>Presenter *presenter;
@property (nonatomic, strong) <%= @module %>DataManager *dataManager;

@end
