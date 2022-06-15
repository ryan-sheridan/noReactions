#include <Foundation/Foundation.h>

%ctor {
	NSLog(@"(noreactions:) noreactions has been loaded\n ");
}

%hook IGStoryQuickReactionsMasterView
	- (id)quickReactionsEmojiView{
		NSString *origString = %orig;
		NSLog(@"(noreactions:) inside IGStoryQuickReactionsMasterView instance method\n");
		NSLog(@"(noreactions:) quickReactionsEmojiView orig: %@\n", origString);
		return 0;
	}
%end
%hook IGStoryQuickReactionsView
	- (id)initWithUserSession:(id)arg1 showTitle:(BOOL)arg2 threeColumnLayout:(BOOL)arg3{
		NSLog(@"(noreactions:) inside IGStoryQuickReactionsView instance method\n");
		return %orig(arg1, 0, arg3);
	}
%end