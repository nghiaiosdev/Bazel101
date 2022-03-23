//
//  HookEngine.m
//  ReactSnap
//
//  Created by Nghia Nguyen on 9/17/21.
//

#import <HookEngine/HookEngine.h>
#import <objc/runtime.h>

@implementation HookEngine
+ (BOOL)hookClass:(Class)sourceClass sourceSelector:(SEL)selector relaceClass:(Class)replaceClass replaceSelector:(SEL)replceSelecor isClassMethod:(BOOL)isClassMethod
{
    
    if(sourceClass == nil) {
        NSLog(@"[CompasKit] not found sourceClass");
        return FALSE;
    }
    
    if(replaceClass == nil) {
        NSLog(@"[CompasKit] not found replaceClass");
        return FALSE;
    }
    
    Method originMethod = isClassMethod
    ? class_getClassMethod(sourceClass, selector)
    : class_getInstanceMethod(sourceClass, selector);
    
    
    Method replaceMethod = isClassMethod
    ? class_getClassMethod(replaceClass, replceSelecor)
    : class_getInstanceMethod(replaceClass, replceSelecor);
    
  
    if(originMethod == nil) {
        NSLog(@"[CompasKit] not found originMethod");
        return FALSE;
    }
    
    if(replaceMethod == nil) {
        NSLog(@"[CompasKit] not found replaceMethod");
        return FALSE;
    }
    
    method_exchangeImplementations(originMethod, replaceMethod);
    NSLog(@"[CompasKit] H %@ sf", NSStringFromClass(sourceClass));
    return YES;
    
}

+ (BOOL)hookClass:(Class)sourceClass sourceSelectorString:(NSString *)sourceSelectorString relaceClass:(Class)replaceClass replaceSelector:(SEL)replceSelecor isClassMethod:(BOOL)isClassMethod {
    
    if(sourceClass == nil) {
        NSLog(@"[CompasKit] not found sourceClass");
        return FALSE;
    }
    
    if(replaceClass == nil) {
        NSLog(@"[CompasKit] not found replaceClass");
        return FALSE;
    }
    
    SEL sourceSelector = NSSelectorFromString(sourceSelectorString);
    if(sourceSelectorString == nil) {
        NSLog(@"[CompasKit] not found sourceSelectorString");
        return FALSE;
    }
    
    Method originMethod = isClassMethod
    ? class_getClassMethod(sourceClass, sourceSelector)
    : class_getInstanceMethod(sourceClass, sourceSelector);
    
    
    Method replaceMethod = isClassMethod
    ? class_getClassMethod(replaceClass, replceSelecor)
    : class_getInstanceMethod(replaceClass, replceSelecor);
    
  
    if(originMethod == nil) {
        NSLog(@"[CompasKit] not found originMethod");
        return FALSE;
    }
    
    if(replaceMethod == nil) {
        NSLog(@"[CompasKit] not found replaceMethod");
        return FALSE;
    }
    
    method_exchangeImplementations(originMethod, replaceMethod);
    NSLog(@"[CompasKit] H %@ sf", NSStringFromClass(sourceClass));
    return YES;
}

@end
