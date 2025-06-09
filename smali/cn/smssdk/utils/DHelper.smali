.class public Lcn/smssdk/utils/DHelper;
.super Ljava/lang/Object;
.source "DHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/smssdk/utils/DHelper;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcn/smssdk/utils/DHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcn/smssdk/utils/DHelper;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcn/smssdk/utils/DHelper;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcn/smssdk/utils/DHelper;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcn/smssdk/utils/DHelper;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getSignMd5()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/DHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/smssdk/net/b;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/smssdk/utils/DHelper;->a:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/utils/DHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcn/smssdk/utils/DHelper$a;

    invoke-direct {v0}, Lcn/smssdk/utils/DHelper$a;-><init>()V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[SMSSDK] %s"

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 54
    :goto_0
    sget-object v0, Lcn/smssdk/utils/DHelper;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static support()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getBrand()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 3
    instance-of v1, v0, Ljava/lang/ClassNotFoundException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/NoSuchMethodException;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[SMSSDK] %s"

    const-string/jumbo v1, "\u672c\u4ea7\u54c1\u8fdb\u884c\u4e86\u67b6\u6784\u5347\u7ea7\u4f18\u5316\uff0c\u4e3a\u4fdd\u8bc1\u6b63\u5e38\u4f7f\u7528SDK\uff0c\u8bf7\u786e\u4fdd\u76f8\u5173\u67b6\u5305\u5347\u7ea7\u5230\u4e86\u6700\u65b0\u7248\u672c\uff0c\u6216\u8005\u53ef\u81f3\u5b98\u7f51\u8054\u7cfb\u6280\u672f\u652f\u6301"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
