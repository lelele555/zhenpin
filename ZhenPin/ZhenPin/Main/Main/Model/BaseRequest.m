//
//  BaseRequest.m
//  SSTES
//
//  Created by qianfeng on 16/9/26.
//  Copyright © 2016年 chenxiang. All rights reserved.
//

#import "BaseRequest.h"

@implementation BaseRequest



+(void)getWithUrl:(NSString *)url para:(NSDictionary *)para call:(void (^)(NSData* data,NSError* error))callBack{
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSMutableString *urlStr = [[NSMutableString alloc]initWithString:url];
    if (para != nil){
        [urlStr appendString:[self encodeUniCode:[self parasToString:para]]];
    }
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    request.HTTPMethod = @"GET";
    
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data != nil){
            callBack(data,nil);
        }else{
            callBack(nil,error);
        }
    }];
    //启动请求任务
    [dataTask resume];
}


+(void)postWithURL:(NSString *)url para:(NSDictionary *)para call:(void (^)(NSData* data,NSError* error))callBack{
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSMutableString *urlStr = [[NSMutableString alloc]initWithString:url];
    if (para != nil){
        [urlStr appendString:[self encodeUniCode:[self parasToString:para]]];
    }
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    request.HTTPMethod = @"POST";


  
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data != nil){
            callBack(data,nil);
        }else{
            callBack(nil,error);
        }
    }];
    //启动请求任务
    [dataTask resume];
}


+(NSString*)parasToString:(NSDictionary *)para{
    
    NSMutableString *paraStr = [[NSMutableString alloc]initWithString:@"?"];
    [para enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [paraStr appendFormat:@"%@=%@&",key,obj];
    }];
    if ([paraStr hasPrefix:@"&"]){
        [paraStr deleteCharactersInRange:NSMakeRange(paraStr.length - 1, 1)];
    }
    
    return paraStr;
}

+(NSString*)encodeUniCode:(NSString*)string{
    return [string stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
}
@end
