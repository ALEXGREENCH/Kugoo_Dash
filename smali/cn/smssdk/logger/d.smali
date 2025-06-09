.class public Lcn/smssdk/logger/d;
.super Ljava/lang/Object;
.source "SMSLogger.java"


# static fields
.field private static b:Lcn/smssdk/logger/ILoggerEngine;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcn/smssdk/logger/d;


# instance fields
.field private a:Lcom/mob/tools/utils/Hashon;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcn/smssdk/logger/d;->a:Lcom/mob/tools/utils/Hashon;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/smssdk/logger/d;->c:Ljava/util/HashMap;

    .line 4
    invoke-static {}, Lcn/smssdk/logger/b;->a()Lcn/smssdk/logger/b;

    move-result-object v0

    sput-object v0, Lcn/smssdk/logger/d;->b:Lcn/smssdk/logger/ILoggerEngine;

    return-void
.end method

.method private a(Ljava/lang/Object;JJI)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "JJI)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "detail"

    .line 18
    invoke-direct {p0}, Lcn/smssdk/logger/d;->c()Ljava/util/HashMap;

    move-result-object v1

    .line 19
    invoke-direct {p0, p6}, Lcn/smssdk/logger/d;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "time"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "costTime"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "method"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    instance-of p2, p1, Ljava/lang/Throwable;

    const-string p3, "isError"

    const/4 p4, 0x0

    const-string p5, "innerCode"

    const-string v2, "innerDesc"

    if-eqz p2, :cond_4

    .line 25
    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 29
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    .line 30
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x267

    if-eq v6, v7, :cond_2

    if-ne p6, v5, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p2, "No Message"

    .line 40
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    invoke-static {p2}, Lcn/smssdk/utils/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 53
    :catchall_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const-string p6, "SMSLogger"

    aput-object p6, p5, p4

    const-string p4, "prepareListParams"

    aput-object p4, p5, v5

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "data: "

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, p5, p4

    const-string p1, "[SMSSDK][%s][%s] %s"

    invoke-virtual {p2, p1, p5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 56
    :cond_3
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 57
    :cond_4
    instance-of p2, p1, Ljava/lang/String;

    const-string p6, "No message"

    const/16 v0, 0xc8

    if-eqz p2, :cond_8

    .line 58
    check-cast p1, Ljava/lang/String;

    const-string/jumbo p2, "sdkMode"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 61
    iget-object p2, p0, Lcn/smssdk/logger/d;->a:Lcom/mob/tools/utils/Hashon;

    const-class p3, Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    .line 64
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    const-string p2, ""

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    .line 68
    :cond_6
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 69
    :cond_7
    :goto_2
    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 75
    :cond_8
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "null"

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 79
    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 81
    :cond_9
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v1
.end method

.method private c(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private c()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "net"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "operator"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "pkg"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "md5"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "sdkver"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_5
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "duid"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_6
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "sys"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 27
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_7
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "romVersion"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 30
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_8
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "sdkMode"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "NORMAL"

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_9
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "deviceName"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 36
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/logger/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v0
.end method

.method public static d()Lcn/smssdk/logger/d;
    .locals 2

    .line 1
    sget-object v0, Lcn/smssdk/logger/d;->d:Lcn/smssdk/logger/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/smssdk/logger/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/smssdk/logger/d;->d:Lcn/smssdk/logger/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/smssdk/logger/d;

    invoke-direct {v1}, Lcn/smssdk/logger/d;-><init>()V

    sput-object v1, Lcn/smssdk/logger/d;->d:Lcn/smssdk/logger/d;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcn/smssdk/logger/d;->d:Lcn/smssdk/logger/d;

    return-object v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "token"

    return-object p1

    :cond_0
    const-string p1, "code"

    return-object p1

    :cond_1
    const-string p1, "init"

    return-object p1
.end method

.method private e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/smssdk/logger/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/smssdk/logger/d;->b:Lcn/smssdk/logger/ILoggerEngine;

    invoke-interface {v0}, Lcn/smssdk/logger/ILoggerEngine;->getLogList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .line 1
    sget-object v0, Lcn/smssdk/logger/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/smssdk/logger/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()V
    .locals 1

    .line 4
    sget-object v0, Lcn/smssdk/logger/d;->b:Lcn/smssdk/logger/ILoggerEngine;

    invoke-interface {v0}, Lcn/smssdk/logger/ILoggerEngine;->deleteAllLogItems()V

    return-void
.end method

.method public a(IJLjava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcn/smssdk/logger/d;->b:Lcn/smssdk/logger/ILoggerEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/smssdk/logger/ILoggerEngine;->insertOneRequestLog(IJLjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 11

    .line 5
    invoke-virtual {p0, p1}, Lcn/smssdk/logger/d;->a(I)J

    move-result-wide v0

    .line 6
    invoke-direct {p0, p1}, Lcn/smssdk/logger/d;->c(I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v6, v9, v0

    move-object v2, p0

    move-object v3, p2

    move-wide v4, v9

    move v8, p1

    .line 10
    invoke-direct/range {v2 .. v8}, Lcn/smssdk/logger/d;->a(Ljava/lang/Object;JJI)Ljava/util/HashMap;

    move-result-object p2

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "list"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcn/smssdk/net/f;->d()Lcn/smssdk/net/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/smssdk/net/f;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcn/smssdk/logger/d;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v9, v10, p2}, Lcn/smssdk/logger/d;->a(IJLjava/lang/String;)V

    .line 17
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "SMSLogger"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "uploadOrSave"

    aput-object v1, p2, v0

    const/4 v0, 0x2

    const-string v1, "Upload SDK LOG Faied,So insert into db"

    aput-object v1, p2, v0

    const-string v0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 10

    .line 2
    invoke-direct {p0}, Lcn/smssdk/logger/d;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/smssdk/logger/c;

    .line 8
    invoke-virtual {v2}, Lcn/smssdk/logger/c;->d()I

    move-result v9

    .line 9
    invoke-virtual {v2}, Lcn/smssdk/logger/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/smssdk/logger/c;->a()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v2}, Lcn/smssdk/logger/c;->b()I

    move-result v2

    int-to-long v7, v2

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcn/smssdk/logger/d;->a(Ljava/lang/Object;JJI)Ljava/util/HashMap;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "list"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcn/smssdk/net/f;->d()Lcn/smssdk/net/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/smssdk/net/f;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcn/smssdk/logger/d;->a()V

    .line 17
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SMSLogger"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "uploadAllLogs"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Upload SDK LOG Success,delete the LogItem in db"

    aput-object v3, v1, v2

    const-string v2, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/smssdk/logger/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
