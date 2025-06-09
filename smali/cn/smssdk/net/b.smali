.class public Lcn/smssdk/net/b;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/net/b$b;
    }
.end annotation


# static fields
.field private static v:Ljava/lang/String;

.field private static w:Lcn/smssdk/net/b;

.field public static x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcn/smssdk/utils/SPHelper;

.field private b:Lcom/mob/tools/utils/Hashon;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/smssdk/net/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/smssdk/net/d;

.field private e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private g:Lcn/smssdk/net/b$b;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:J

.field private u:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/smssdk/net/b;->k:I

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcn/smssdk/net/b;->u:Ljava/lang/String;

    .line 42
    new-instance v0, Lcn/smssdk/net/d;

    invoke-direct {v0}, Lcn/smssdk/net/d;-><init>()V

    iput-object v0, p0, Lcn/smssdk/net/b;->d:Lcn/smssdk/net/d;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcn/smssdk/net/b;->h:Z

    .line 44
    invoke-static {}, Lcn/smssdk/utils/SPHelper;->getInstance()Lcn/smssdk/utils/SPHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    .line 45
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    .line 46
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/smssdk/net/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private a(I)Lcn/smssdk/net/g;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moba6b6c6d6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getOSLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    new-array v0, v0, [C

    .line 82
    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "This appkey only for demo!Please request a new one for your own App"

    .line 91
    :goto_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Config"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "getApi"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SMSSDK WARNING: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 95
    :cond_1
    invoke-direct {p0}, Lcn/smssdk/net/b;->h()V

    .line 97
    iget v0, p0, Lcn/smssdk/net/b;->k:I

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcn/smssdk/net/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/smssdk/net/g;

    return-object p1

    .line 104
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "smssdk_error_desc_605"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 105
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\"status\":605,\"detail\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\"}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 2
        0x6240s
        0x586bs
        0x5199s
        0x41s
        0x50s
        0x50s
        0x4bs
        0x45s
        0x59s
        0x4ec5s
        0x4f9bs
        0x6d4bs
        -0x742bs
        0x4f7fs
        0x7528s
        -0xf4s
        0x4e14s
        0x4e0ds
        0x5b9as
        0x671fs
        0x5931s
        0x6548s
        -0xf4s
        -0x7409s
        0x5230s
        0x6ds
        0x6fs
        0x62s
        0x2es
        0x63s
        0x6fs
        0x6ds
        0x540es
        0x53f0s
        0x7533s
        -0x7409s
        0x6b63s
        0x5f0fs
        0x41s
        0x50s
        0x50s
        0x4bs
        0x45s
        0x59s
    .end array-data
.end method

.method static synthetic a(Lcn/smssdk/net/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/smssdk/net/b;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/smssdk/net/b;Z)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/smssdk/net/b;->b(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[SMSSDK][%s][%s] %s"

    const/4 v2, 0x2

    const-string v3, "checkConfigVersion"

    const/4 v4, 0x1

    const-string v5, "Config"

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    aput-object v3, v7, v4

    const-string v3, "Local config does not exist in SP, use default config."

    aput-object v3, v7, v2

    invoke-virtual {v0, v1, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "expire_at"

    .line 115
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 119
    iget-object p1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcn/smssdk/utils/SPHelper;->setConfig(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p1, v0}, Lcn/smssdk/utils/SPHelper;->setBufferedCountrylist(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    aput-object v3, v7, v4

    const-string v3, "Local config is for SMSSDK V2.1.4 or older, clear SP and use default config instead."

    aput-object v3, v7, v2

    invoke-virtual {p1, v1, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object p1, v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    aput-object v3, v7, v4

    const-string v3, "Local config is for SMSSDK V3.0.0 or later, use local config."

    aput-object v3, v7, v2

    invoke-virtual {v0, v1, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-object p1
.end method

.method private a(ILcn/smssdk/net/a;Ljava/util/HashMap;ILjava/lang/Throwable;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/smssdk/net/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 224
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Config"

    aput-object v3, v1, v2

    const-string v2, "handleErrorStatus"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]Handle error status. status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    add-int/lit8 v9, p4, 0x1

    const/16 p4, 0x1c5

    if-ne p1, p4, :cond_1

    .line 229
    instance-of p1, p2, Lcn/smssdk/net/g;

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p2}, Lcn/smssdk/net/a;->c()I

    move-result p1

    if-lez p1, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcn/smssdk/net/b;->a(I)Lcn/smssdk/net/g;

    move-result-object p2

    :cond_0
    move-object v5, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p3

    .line 240
    invoke-direct/range {v4 .. v9}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p4, 0x1a3

    const-string v0, ""

    if-eq p1, p4, :cond_6

    const/16 p4, 0x1a4

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/16 p4, 0x191

    if-eq p1, p4, :cond_5

    const/16 p4, 0x192

    if-ne p1, p4, :cond_3

    goto :goto_0

    :cond_3
    const/16 p4, 0x1e2

    if-ne p1, p4, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    .line 254
    invoke-direct/range {v4 .. v9}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 258
    :cond_4
    throw p5

    .line 259
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p1, v0}, Lcn/smssdk/utils/SPHelper;->setToken(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    .line 260
    invoke-direct/range {v4 .. v9}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 261
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p1, v0}, Lcn/smssdk/utils/SPHelper;->setToken(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    .line 262
    invoke-direct/range {v4 .. v9}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/smssdk/net/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZI)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x5

    if-le p5, v0, :cond_1

    .line 162
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "smssdk_error_desc_server_busy"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 164
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Server is busy!"

    .line 166
    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "description"

    .line 167
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance p1, Ljava/lang/Throwable;

    iget-object p3, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_1
    invoke-direct {p0, p3}, Lcn/smssdk/net/b;->b(Z)Ljava/lang/String;

    move-result-object p3

    .line 173
    instance-of v0, p1, Lcn/smssdk/net/g;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/smssdk/net/a;->c()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 174
    invoke-virtual {p0, p4}, Lcn/smssdk/net/b;->a(Z)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_2
    move-object p4, v2

    .line 179
    :goto_1
    :try_start_0
    invoke-virtual {p1, p3, p4, p2}, Lcn/smssdk/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-object p2, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 194
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :goto_2
    return-object v2

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_3

    .line 195
    invoke-virtual {p1}, Lcn/smssdk/net/a;->b()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_3
    const-string p4, ""

    .line 197
    :goto_3
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Config"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "post"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "]Request exception. msg= "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 198
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const-string p4, "[SMSSDK][%s][%s] %s"

    .line 199
    invoke-virtual {v0, p3, p4, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    invoke-direct {p0, p3, p1, p2, p5}, Lcn/smssdk/net/b;->a(Ljava/lang/Throwable;Lcn/smssdk/net/a;Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/smssdk/net/b;Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Throwable;Lcn/smssdk/net/a;Ljava/util/HashMap;I)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcn/smssdk/net/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "httpStatus"

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    const-string/jumbo v1, "status"

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "res"

    .line 205
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "error"

    .line 206
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    if-eq v1, v2, :cond_1

    move-object v3, p0

    move v4, v1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p1

    .line 212
    :try_start_0
    invoke-direct/range {v3 .. v8}, Lcn/smssdk/net/b;->a(ILcn/smssdk/net/a;Ljava/util/HashMap;ILjava/lang/Throwable;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 217
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string v2, "Config"

    aput-object v2, p3, p4

    const/4 p4, 0x1

    const-string v2, "handleThrowable"

    aput-object v2, p3, p4

    const/4 p4, 0x2

    const-string v2, "ErrorStatus no need to be handled"

    aput-object v2, p3, p4

    const-string p4, "[SMSSDK][%s][%s] %s"

    invoke-virtual {p2, p1, p4, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 220
    :cond_0
    invoke-direct {p0, v1}, Lcn/smssdk/net/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "description"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-direct {p0, v1}, Lcn/smssdk/net/b;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "detail"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance p1, Lcom/mob/MobCommunicator$NetworkError;

    iget-object p2, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_1
    throw p1
.end method

.method static synthetic a(Lcn/smssdk/net/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/smssdk/net/b;->h()V

    return-void
.end method

.method static synthetic a(Lcn/smssdk/net/b;Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcn/smssdk/net/b;->a(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    sget-object v0, Lcn/smssdk/utils/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "[SMSSDK][%s][%s] %s"

    const/4 v2, 0x2

    const-string v3, "parseConfig"

    const-string v4, "Config"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v7

    aput-object v3, v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Parse config. config: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v10, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v0, v1, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    const-string/jumbo v0, "updateAt"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/smssdk/net/b;->j:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 12
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v4, v0, v7

    aput-object v3, v0, v6

    const-string v3, "\'updateAt\' < local config, DO NOT update local config."

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v7

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v10, v10, v8

    if-nez v10, :cond_2

    .line 16
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v7

    aput-object v3, v5, v6

    const-string v3, "Initialize local config."

    aput-object v3, v5, v2

    invoke-virtual {v10, v1, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v7

    aput-object v3, v5, v6

    const-string v3, "\'updateAt\' >= local config, update local config."

    aput-object v3, v5, v2

    invoke-virtual {v10, v1, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/smssdk/net/b;->j:J

    const-string/jumbo v0, "zoneAt"

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcn/smssdk/net/b;->l:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    .line 26
    iput-boolean v6, p0, Lcn/smssdk/net/b;->i:Z

    .line 28
    :cond_3
    iput-wide v0, p0, Lcn/smssdk/net/b;->l:J

    :cond_4
    const-string/jumbo v0, "request"

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/smssdk/net/b;->k:I

    const-string v0, "isSensitiveOrigin"

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/smssdk/net/b;->m:Z

    .line 35
    invoke-static {}, Lcn/smssdk/utils/b;->c()Lcn/smssdk/utils/b;

    move-result-object v0

    iget-boolean v1, p0, Lcn/smssdk/net/b;->m:Z

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/b;->c(Z)V

    :cond_5
    const-string v0, "phoneIsSensitiveOrigin"

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/smssdk/net/b;->n:Z

    .line 41
    invoke-static {}, Lcn/smssdk/utils/b;->c()Lcn/smssdk/utils/b;

    move-result-object v0

    iget-boolean v1, p0, Lcn/smssdk/net/b;->n:Z

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/b;->b(Z)V

    :cond_6
    const-string v0, "publicKey"

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/smssdk/net/b;->o:Ljava/lang/String;

    const-string v0, "modulus"

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/smssdk/net/b;->p:Ljava/lang/String;

    const-string/jumbo v0, "size"

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v7

    :goto_1
    iput v0, p0, Lcn/smssdk/net/b;->q:I

    .line 50
    iget-object v0, p0, Lcn/smssdk/net/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/smssdk/net/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcn/smssdk/net/b;->q:I

    if-lez v0, :cond_8

    .line 51
    iget-object v1, p0, Lcn/smssdk/net/b;->o:Ljava/lang/String;

    iget-object v2, p0, Lcn/smssdk/net/b;->p:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/smssdk/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    const-string/jumbo v0, "result"

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "urls"

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    iget-object v1, p0, Lcn/smssdk/net/b;->c:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/smssdk/net/b;->c:Ljava/util/Map;

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    .line 59
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 60
    iget-object v1, p0, Lcn/smssdk/net/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 62
    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 63
    new-instance v2, Lcn/smssdk/net/g;

    invoke-direct {v2}, Lcn/smssdk/net/g;-><init>()V

    .line 64
    invoke-virtual {v2, v1}, Lcn/smssdk/net/g;->a(Ljava/util/HashMap;)V

    .line 65
    iget-object v3, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2, v3}, Lcn/smssdk/net/a;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 66
    iget-object v3, p0, Lcn/smssdk/net/b;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcn/smssdk/net/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v2, Lcn/smssdk/utils/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 68
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "api: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/smssdk/utils/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " urls.size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/smssdk/net/b;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_c
    const-string v0, "exportKey"

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 73
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 75
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/smssdk/logger/a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_d
    :goto_4
    return v6
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "smssdk_error_desc_"

    .line 22
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 25
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 28
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/smssdk/net/b;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcn/smssdk/net/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    iget-object p1, p0, Lcn/smssdk/net/b;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/smssdk/net/b;->r:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcn/smssdk/net/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 13
    :cond_1
    :try_start_1
    new-instance p1, Lcom/mob/commons/SMSSDK;

    invoke-direct {p1}, Lcom/mob/commons/SMSSDK;-><init>()V

    invoke-static {p1}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/smssdk/net/b;->r:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcn/smssdk/logger/a;->m()Lcn/smssdk/logger/a;

    move-result-object p1

    iget-object v0, p0, Lcn/smssdk/net/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/smssdk/logger/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object p1, p0, Lcn/smssdk/net/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    :cond_2
    iget-object p1, p0, Lcn/smssdk/net/b;->r:Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    iget-object v0, p0, Lcn/smssdk/net/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    throw p1
.end method

.method static synthetic b(Lcn/smssdk/net/b;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static synthetic c(Lcn/smssdk/net/b;)Lcn/smssdk/net/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/net/b;->d:Lcn/smssdk/net/d;

    return-object p0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "smssdk_error_detail_"

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d()Lcn/smssdk/net/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/net/b;->w:Lcn/smssdk/net/b;

    return-object v0
.end method

.method static synthetic d(Lcn/smssdk/net/b;)Lcom/mob/tools/utils/Hashon;
    .locals 0

    .line 2
    iget-object p0, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    return-object p0
.end method

.method static synthetic e(Lcn/smssdk/net/b;)Lcn/smssdk/utils/SPHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lcn/smssdk/net/b;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcn/smssdk/net/b;->v:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 10
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/smssdk/net/b;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 6

    const-string v0, "DeviceHelper"

    const-string v1, "getInstance"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reflectInvoke: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcn/smssdk/net/b;
    .locals 3

    .line 1
    sget-object v0, Lcn/smssdk/net/b;->w:Lcn/smssdk/net/b;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcn/smssdk/net/b;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcn/smssdk/net/b;

    invoke-direct {v1}, Lcn/smssdk/net/b;-><init>()V

    sput-object v1, Lcn/smssdk/net/b;->w:Lcn/smssdk/net/b;

    .line 5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/smssdk/net/b$a;

    invoke-direct {v2}, Lcn/smssdk/net/b$a;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 17
    :cond_0
    :goto_0
    sget-object v0, Lcn/smssdk/net/b;->w:Lcn/smssdk/net/b;

    return-object v0
.end method

.method private h()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "parseConfig"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    iget-boolean v1, p0, Lcn/smssdk/net/b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->prepare()V

    .line 81
    sget-object v1, Lcn/smssdk/utils/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v2, "SMSSDK"

    if-eqz v1, :cond_1

    .line 82
    :try_start_2
    invoke-static {v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->checkRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 85
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->clear()V

    .line 88
    :cond_2
    iget-object v3, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v3}, Lcn/smssdk/utils/SPHelper;->getConfig()Ljava/lang/String;

    move-result-object v3

    .line 89
    new-instance v4, Lcn/smssdk/net/b$b;

    invoke-direct {v4, p0}, Lcn/smssdk/net/b$b;-><init>(Lcn/smssdk/net/b;)V

    iput-object v4, p0, Lcn/smssdk/net/b;->g:Lcn/smssdk/net/b$b;

    .line 92
    invoke-direct {p0, v3}, Lcn/smssdk/net/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v2, v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string/jumbo v4, "{\"updateAt\":1545204873539,\"zoneAt\":1517389200000,\"result\":{\"urls\":[{\"name\":\"getToken\",\"host\":\"sdkapi.sms.mob.com\",\"port\":80,\"action\":\"/v3/token/get\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"sign\",\"apppkg\",\"appver\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"getFriend\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/fm\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"contactphones\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"sendTextSMS\",\"host\":\"code.sms.mob.com\",\"port\":80,\"action\":\"/v3/verify/code\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"simserial\",\"myPhone\",\"tempCode\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"verifyCode\",\"host\":\"code.sms.mob.com\",\"port\":80,\"action\":\"/v3/client/verification\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"code\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"getZoneList\",\"host\":\"sdkapi.sms.mob.com\",\"port\":80,\"action\":\"/v3/utils/zonelist\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"getFriendNew\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/fm/new\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"contactphones\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"submitUser\",\"host\":\"sdkapi.sms.mob.com\",\"port\":80,\"action\":\"/v3/app/submituserinfo\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"uid\",\"nickname\",\"avatar\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"sendVoiceSMS\",\"host\":\"code.sms.mob.com\",\"port\":80,\"action\":\"/v3/voice/verify/code\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"sdkLog\",\"host\":\"log.sms.mob.com\",\"port\":80,\"action\":\"/log/sdk\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"list\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"uploadContacts\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/apply\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"myPhone\",\"simserial\",\"operator\",\"secretKey\",\"contacts\",\"imsi\",\"md5\"],\"zip\":1,\"request\":1,\"frequency\":0},{\"name\":\"uploadContactsNew\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/apply/new\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"zone\",\"myPhone\",\"simserial\",\"operator\",\"secretKey\",\"contacts\",\"md5\"],\"zip\":1,\"request\":1,\"frequency\":0}]},\"request\":1,\"isSensitiveOrigin\":true,\"isPhoneSensitiveOrigin\":false}"

    if-eqz v1, :cond_4

    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    iget-object v1, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    :try_start_4
    invoke-direct {p0, v1}, Lcn/smssdk/net/b;->a(Ljava/util/HashMap;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 132
    :catchall_0
    :try_start_5
    iget-object v1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcn/smssdk/utils/SPHelper;->setConfig(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 134
    invoke-direct {p0, v1}, Lcn/smssdk/net/b;->a(Ljava/util/HashMap;)Z

    goto :goto_2

    .line 135
    :cond_4
    :goto_1
    iget-object v1, p0, Lcn/smssdk/net/b;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcn/smssdk/net/b;->y:Ljava/util/HashMap;

    .line 139
    :cond_5
    invoke-direct {p0, v1}, Lcn/smssdk/net/b;->a(Ljava/util/HashMap;)Z

    :goto_2
    const/4 v1, 0x1

    .line 151
    iput-boolean v1, p0, Lcn/smssdk/net/b;->h:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    :try_start_6
    invoke-static {}, Lcn/smssdk/SMSSDKCore;->f()V

    .line 156
    invoke-static {}, Lcn/smssdk/logger/d;->d()Lcn/smssdk/logger/d;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcn/smssdk/logger/d;->b(I)V

    .line 157
    iget-object v3, p0, Lcn/smssdk/net/b;->g:Lcn/smssdk/net/b$b;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 159
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/smssdk/net/b;->u:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v4, "[SMSSDK][%s][%s] %s"

    const/4 v5, 0x3

    :try_start_8
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Config"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "initConfig"

    aput-object v6, v5, v1

    iget-object v1, p0, Lcn/smssdk/net/b;->u:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 162
    :goto_3
    invoke-static {v2, v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 164
    iget-object v0, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcn/smssdk/net/b;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 165
    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Use token stored in SP. token="

    const-string v1, "force: "

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v2}, Lcn/smssdk/utils/SPHelper;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v2}, Lcn/smssdk/utils/SPHelper;->getTokenCacheAt()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/smssdk/net/b;->t:J

    .line 130
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Config"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "getToken"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", tokenInSp: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Lcn/smssdk/net/b;->t:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-string v1, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v2, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v1, p0, Lcn/smssdk/net/b;->t:J

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v1, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long p1, v1, v8

    if-lez p1, :cond_0

    .line 133
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Config"

    aput-object v2, v1, v6

    const-string v2, "getToken"

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 134
    iget-object p1, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 137
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Config"

    aput-object v1, v0, v6

    const-string v1, "getToken"

    aput-object v1, v0, v7

    const-string v1, "Observe token from server."

    aput-object v1, v0, v5

    const-string v1, "[SMSSDK][%s][%s] %s"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 138
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-static {}, Lcn/smssdk/net/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sign"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0, v3, p1}, Lcn/smssdk/net/b;->a(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    const-string/jumbo v0, "token"

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    iget-object v0, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/smssdk/utils/SPHelper;->setToken(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcn/smssdk/net/b;->a:Lcn/smssdk/utils/SPHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/smssdk/utils/SPHelper;->setTokenCacheAt(J)V

    .line 151
    iget-object p1, p0, Lcn/smssdk/net/b;->s:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 152
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "get token error!"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lcn/smssdk/net/b;->a(I)Lcn/smssdk/net/g;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 154
    invoke-direct/range {v0 .. v5}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object p2

    .line 155
    invoke-virtual {p1}, Lcn/smssdk/net/a;->c()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "smart"

    .line 156
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lcn/smssdk/net/g;->d()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 161
    invoke-virtual {p1}, Lcn/smssdk/net/g;->d()V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public a()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcn/smssdk/net/b;->i:Z

    return v0
.end method

.method public b()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcn/smssdk/net/b;->l:J

    return-wide v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/smssdk/net/b;->i:Z

    return-void
.end method
