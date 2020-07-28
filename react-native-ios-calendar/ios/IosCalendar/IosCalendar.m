#import "IosCalendar.h"

@implementation IosCalendar

RCT_EXPORT_MODULE()

// Example method
// See // https://facebook.github.io/react-native/docs/native-modules-ios
RCT_REMAP_METHOD(multiply,
                 multiplyWithA:(nonnull NSNumber*)a withB:(nonnull NSNumber*)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = @([a floatValue] * [b floatValue]);

  resolve(result);
}

RCT_REMAP_METHOD(open,
                 date:(NSString *)date
                 callback:(RCTResponseSenderBlock)callback)
{
    NSArray *events = @[@123, @"b", @"c"];
    callback(@[[NSNull null], events]);
}

@end
