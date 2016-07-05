#pragma mark -
#pragma mark - 常用方法预定义
#define CURRENT_LANGUAGE                        ([[NSLocale preferredLanguages] objectAtIndex:0])
#define BLLocalizedString(a, b)                 [Tools BLLocalizedString:(a) table:(b)]
#define IOSVersion                              [[[UIDevice currentDevice] systemVersion] floatValue]
#define IsiOS7Later                             !(IOSVersion < 7.0)
#define IsiOS8Later                             !(IOSVersion < 8.0)
#define IsiOS9Later                             !(IOSVersion < 9.0)
#define NaviBarHeight                           44.0f
#define TabBarHeight                            49.0f
#define IWcolor(r, g, b)                            [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:1.f]
#define RGBA(r, g, b, a)                        [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define StatusBarHeight                         [UIApplication sharedApplication].statusBarFrame.size.height
#define RGB_TextLightBlue                       RGB(23.0f, 126.0f, 251.0f)

#pragma mark - log信息函数预定义
#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define DLog(...)
#endif
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)


#pragma maek - 首页顶部View预定义
#define MovieURL                   @"http://vodcdn.video.taobao.com/oss/ali-video/2b8b0b5f46a5a01145e3ae3e7fcaf08f/video.mp4"
#define MP4Name                    @"video.mp4"

#pragma mark -
#pragma mark - 数据库名称预定义
#define CY_DB_NEWVERSION                        1
#define CY_DB_NAME                              @"chuyingfound.db"