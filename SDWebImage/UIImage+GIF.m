/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 * (c) Laurin Brandner
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "UIImage+GIF.h"
#import <ImageIO/ImageIO.h>
#import "objc/runtime.h"
#import "NSImage+WebCache.h"
#import "UIImage+animatedGIF.h"

@implementation UIImage (GIF)

+ (UIImage *)sd_animatedGIFWithData:(NSData *)data {
    if (!data) {
        return nil;
    }
    
    return [UIImage animatedImageWithAnimatedGIFData:data];
}

- (BOOL)isGIF {
    return (self.images != nil);
}

@end
