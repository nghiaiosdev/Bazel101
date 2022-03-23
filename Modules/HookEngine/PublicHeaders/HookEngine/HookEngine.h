//
//  HookEngine.h
//  ReactSnap
//
//  Created by Nghia Nguyen on 9/17/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HookEngine : NSObject
+(BOOL)hookClass:(Class)sourceClass sourceSelector:(SEL)selector relaceClass:(Class)replaceClass replaceSelector:(SEL)replceSelecor isClassMethod:(BOOL)isClassMethod;
+(BOOL)hookClass:(Class)sourceClass sourceSelectorString:(NSString*)sourceSelectorString relaceClass:(Class)replaceClass replaceSelector:(SEL)replceSelecor isClassMethod:(BOOL)isClassMethod;
@end

NS_ASSUME_NONNULL_END
