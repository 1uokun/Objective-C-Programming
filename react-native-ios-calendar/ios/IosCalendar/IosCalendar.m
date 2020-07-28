#import "IosCalendar.h"
#import <React/RCTLog.h>

@implementation IosCalendar
{
    BOOL hasListeners;
}

RCT_EXPORT_MODULE()


// Promise
RCT_REMAP_METHOD(multiply,
                 multiplyWithA:(nonnull NSNumber*)a
                 withB:(nonnull NSNumber*)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = @([a floatValue] * [b floatValue]);

  resolve(result);
}

// Callback
RCT_REMAP_METHOD(open,
                 date:(NSString *)date
                 callback:(RCTResponseSenderBlock)callback)
{
    NSArray *events = @[@123, @"b", @"c"];
    callback(@[[NSNull null], events]);
    
    if(hasListeners) {
        [self sendEventWithName:@"EventReminder" body:@{@"name": date}];
    }
}

// NativeEventEmitter
-(void)startObserving {
    hasListeners = YES;
}
-(void)stopObserving {
    hasListeners = NO;
}


- (NSArray<NSString *> *)supportedEvents
{
  return @[@"EventReminder"];
}



@end
