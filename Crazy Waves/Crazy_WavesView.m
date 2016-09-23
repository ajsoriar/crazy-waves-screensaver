//
//  Crazy_WavesView.m
//  Crazy Waves
//
//  Created by ajsoriar on 23/09/2016.
//  Copyright © 2016 ajsoriar. All rights reserved.
//

#import "Crazy_WavesView.h"

@implementation Crazy_WavesView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    //int ancho = 5;
    
    NSBezierPath *path;
    NSRect rect;
    NSSize size;
    NSColor *color;
    float red, green, blue, alpha, radio, origin_x, origin_y, tamanyo_y, tamanyo_x, alpha_step;
    
    size = [self bounds].size;
    path.lineWidth = 2;
    
    radio = SSRandomFloatBetween( 50, 500 );
    origin_x = SSRandomFloatBetween( -radio, size.width );
    origin_y = SSRandomFloatBetween( -radio, size.height );
    tamanyo_x = radio * 2; //SSRandomFloatBetween( size.width / 5, size.width / 30.0 );
    tamanyo_y = tamanyo_x; 

    // Base colors
    red = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    green = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    blue = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    alpha = 1;
    
    // Paint circles
    alpha_step = 1/radio;
    for (int i = 0; i < radio; i++)
    {
        alpha = alpha - alpha_step;
        color = [NSColor colorWithCalibratedRed:red green:green blue:blue alpha:alpha];
        [color set];
        rect = NSMakeRect(origin_x - i, origin_y - i, i*2, i*2);
        path = [NSBezierPath bezierPathWithOvalInRect:rect];
        [path stroke];
    }
    
    // draw
    
    /*
    if (SSRandomIntBetween( 0, 1 ) == 0)
     [path fill];
    else
     [path stroke];
    */
 
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
