//
//  Common.h
//  SSTES
//
//  Created by qianfeng on 16/9/26.
//  Copyright © 2016年 chenxiang. All rights reserved.
//

#ifndef Common_h
#define Common_h


#define BGCOLOR [[UIColor alloc]initWithWhite:0.93 alpha:1]
#define RGBCOLOR(r,g,b,a) ([UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a])
#define BAR_TINTCOLOR [UIColor colorWithRed:178/255.0 green:20/255.0 blue:30/255.0 alpha:1]

#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define SCREEN_BOUNDS [[UIScreen mainScreen]bounds]
#define gap 10


#define HOME_URL @""
#define IMG_URL @""


#define RecomendSearch_PATH [NSString stringWithFormat:@"%@/Documents/recom.arc",NSHomeDirectory()]

#endif /* Common_h */
