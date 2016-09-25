//
//  Crazy_WavesView.m
//  Crazy Waves
//
//  Created by ajsoriar on 23/09/2016.
//  Copyright © 2016 ajsoriar. All rights reserved.
//

/*
 
 // Original javascript code
 
 colorCentral: {r:0,g:0,b:0,o:0},
 colorExterior: {r:255,g:255,b:255,o:1},
 longitudDeOnda: 10,
 
 circulos: function(){
 
     var canvas = document.getElementById("myCanvas");
     c = canvas.getContext('2d');
     var canvasW = canvas.width
     var canvasH = canvas.height
     var canvasCenterX = canvasW/2;
     var canvasCenterY = canvasH/2;
     
     // Ver si se hizo click
     if ((this.epicenterX != Mouse.x)||(this.epicenterY != Mouse.y)) {
     
         this.epicenterX = Mouse.x;
         this.epicenterY = Mouse.y;
         
         //Crear nuevos valores
         this.radio = getRandomInt (50, 500);
         
         this.colorCentral.r=getRandomInt (0, 255);
         this.colorCentral.g=getRandomInt (0, 255);
         this.colorCentral.b=getRandomInt (0, 255);
         console.log("colorCentral RGBA: "+ this.colorCentral.r +", "+ this.colorCentral.g +", "+ this.colorCentral.b +", "+stepOpacity );
         
         this.colorExterior.r=getRandomInt (0, 255);
         this.colorExterior.g=getRandomInt (0, 255);
         this.colorExterior.b=getRandomInt (0, 255);
         console.log("colorExterior RGBA: "+ this.colorExterior.r +", "+ this.colorExterior.g +", "+ this.colorExterior.b +", "+stepOpacity );

         this.longitudDeOnda = getRandomInt (10, 100);
         console.log("Epicentro ("+this.epicenterX+","+this.epicenterY+"); De color "+this.colorCentral.value+" a "+this.colorExterior+"; Radio:"+this.radio+"; L. Onda:"+this.longitudDeOnda+";");
     }
     
     //var c = Demo3dApp.Layout.cvContext;
     var stepR = this.calculaPaso(this.colorCentral.r,this.colorExterior.r,this.longitudDeOnda/2);
     var stepG = this.calculaPaso(this.colorCentral.g,this.colorExterior.g,this.longitudDeOnda/2);
     var stepB = this.calculaPaso(this.colorCentral.b,this.colorExterior.b,this.longitudDeOnda/2);
     var stepOpacity = this.calculaPaso(0,1,this.radio);
     console.log("Pasos RGBA: "+ stepR +", "+ stepR +", "+stepR+", "+stepOpacity );
     
     var cont = 0;
     var colR = this.colorCentral.r;
     var colG = this.colorCentral.g;
     var colB = this.colorCentral.b;
     var colOpacity = 1;
     
     var cR,cG,cB,cO;
     
     for (var i=0; i<this.radio; i++){
 
         cR = this.limitarCantidad(colR);
         cG = this.limitarCantidad(colG);
         cB = this.limitarCantidad(colB);
         cO = colOpacity;
         
         // PINTA
         c.strokeStyle = "rgba("+ cR +","+ cG +","+ cB +","+ cO +")";
         c.beginPath();
         c.arc(this.epicenterX, this.epicenterY, i, 0, 2 * Math.PI, false);
         c.lineWidth = 1; //0.5;
         c.stroke();
         console.log("Colores RGBA: ("+ cR +","+ cG +","+ cB +","+ cO +")");
         
         // Actualiza valores
         colOpacity = colOpacity - stepOpacity;
         if (stepOpacity < 0) stepOpacity=0;
         
         if (cont < (this.longitudDeOnda/2)) { //Sube la onda ...
             var colR=colR + stepR;
             var colG=colG + stepG;
             var colB=colB + stepB;
             //console.log("Onda sube. Color RGB: ("+ Math.floor(colR) +", "+ Math.floor(colG) +", "+ Math.floor(colB) +")");
         }else{ // Baja la onda ...
             var colR=colR - stepR;
             var colG=colG - stepG;
             var colB=colB - stepB;
             //console.log("Onda baja. Color RGB: ("+ Math.floor(colR) +", "+ Math.floor(colG) +", "+ Math.floor(colB) +")");
         }
         
         if (cont >= this.longitudDeOnda-1) cont=0; else cont++;
 
     }
 
 },
 limitarCantidad: function(num){
 
     if (num < 0) {
         return 0;
     } else if (num > 255) {
         return 255;
     } else {
         return Math.floor(num);
     }
     //return 0;
 
     },
 
 
 calculaPaso: function(a,b,longitud){
 
     if (longitud <= 0) return 0;
     if(a==b){
         return 0;
 
     }else{
         if (a<b){
             return (b-a)/longitud;
         }else{
             return -(a-b)/longitud
         }
     }
 }
 
*/

#import "Crazy_WavesView.h"

/* TODO: check this!

@interface SampleClass:NSObject

//method declaration
- (float)calculaPasoEntre: (float) a y: (float) b dadaLaLongitud: (int) longitud;
@end

@implementation SampleClass

- (float)calculaPasoEntre: (float) a y: (float) b dadaLaLongitud: (int) longitud //Eg: float newPaso = [SampleClass calculaPasoEntre: A y: B dadaLaLongitud: L]; ?
{
    
    if (longitud <= 0) return 0;
    
    if(a == b){
        return 0;
        
    }else{
        if (a<b){
            return (b-a)/longitud;
        }else{
            return -(a-b)/ longitud;
        }
    }
    
    return 0;
    
}

@end
*/


@implementation Crazy_WavesView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/200.0];
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

/* function returning the max between two numbers */

/*
- (int) max:(int) num1 secondNumber:(int) num2
{
    int result;
    
    if (num1 > num2)
    {
        result = num1;
    }
    else
    {
        result = num2;
    }
    
    return result;
}

- (int)addX:(int)x toY:(int)y { //Eg: int newScore = [score addX:24 toY:points];
      int sum = x + y;
      return sum;
}
*/

/*
- (float)calculaPasoEntre: (float) a y: (float) b dadaLaLongitud: (int) longitud
{
    
    if (longitud <= 0) return 0;
    
    if(a == b){
        return 0;
        
    }else{
        if (a<b){
            return (b-a)/longitud;
        }else{
            return -(a-b)/ longitud;
        }
    }
    
    return 0;
    
}
 */

float calculateStep( float a, float b, int stepsNum ) { // This calculates the 'amount of change' needed to go from one number to other in a specific number of steps.
    
    if (stepsNum <= 0) return 0;
    
    if (a == b){
        return 0;
        
    }else{
        if (a<b){
            return (b-a) / stepsNum;
        }else{
            return -(a-b) / stepsNum;
        }
    }
    
    return 0;
}

float setInValidRange ( float num ){ // We want/need to keep color values between 0 and 255.0
    
    if (num < 0) {
        return 0;
    } else if (num > 255) {
        return 255;
    }
    
    return num;
}

- (void)animateOneFrame
{
    
    NSBezierPath *path;
    NSRect rect;
    NSSize size;
    NSColor *color;
    float color1_r, color1_g, color1_b, color2_r, color2_g, color2_b, radio, origin_x, origin_y, tamanyo_y, tamanyo_x;
    
    size = [self bounds].size;
    path.lineWidth = 2;
    
    radio = SSRandomFloatBetween( 50, 500 );
    origin_x = SSRandomFloatBetween( -radio, size.width );
    origin_y = SSRandomFloatBetween( -radio, size.height );
    tamanyo_x = radio * 2; //SSRandomFloatBetween( size.width / 5, size.width / 30.0 );
    tamanyo_y = tamanyo_x; 

    // Set 'from' and 'to' colors
    color1_r = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    color1_g = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    color1_b = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    color2_r = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    color2_g = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    color2_b = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    
    // Get random wave length
    float waveLength = SSRandomFloatBetween (10, 100);
    
    // Calculate steps (amount of change) for each color.
    // float stepR = [Crazy_WavesView calculaPasoEntre: color1_r y: color2_r dadaLaLongitud: (waveLength/2) ]; 
    float stepR = calculateStep( color1_r, color2_r, waveLength/2 );
    float stepG = calculateStep( color1_g, color2_g, waveLength/2 );
    float stepB = calculateStep( color1_b, color2_b, waveLength/2 );
    float stepOpacity = calculateStep( 0, 1, radio );
    
    // Paint circles
    int cont = 0;
    float colR = color1_r, colG = color1_g, colB = color1_b, colAlpha = 1;
    
    for (int i = 0; i < radio; i++)
    {
        
        colR = setInValidRange( colR ) ;
        colG = setInValidRange( colG ) ;
        colB = setInValidRange( colB ) ;

        // Set color
        color = [NSColor colorWithCalibratedRed:colR green:colG blue:colB alpha:colAlpha];
        [color set];
        
        // Calculate the size of the square where the circle will be embedded
        rect = NSMakeRect(origin_x - i, origin_y - i, i*2, i*2);
        path = [NSBezierPath bezierPathWithOvalInRect:rect];
        [path stroke];
        
        // Update values for the next iteration
        colAlpha = colAlpha - stepOpacity;
        
        if (colAlpha < 0) colAlpha=0;
        
        if (cont < (waveLength/2)) { // The wave goes up!
            
            colR = colR + stepR;
            colG = colG + stepG;
            colB = colB + stepB;

        }else{ // The wave goes down!
            
            colR=colR - stepR;
            colG=colG - stepG;
            colB=colB - stepB;
        }
        
        if (cont >= waveLength -1) cont= 0; else cont++;
    }
 
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
