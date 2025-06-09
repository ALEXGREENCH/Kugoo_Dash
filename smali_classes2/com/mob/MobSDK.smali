.class public Lcom/mob/MobSDK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field public static final CHANNEL_APICLOUD:I = 0x5

.field public static final CHANNEL_COCOS:I = 0x1

.field public static final CHANNEL_FLUTTER:I = 0x4

.field public static final CHANNEL_JS:I = 0x3

.field public static final CHANNEL_NATIVE:I = 0x0

.field public static final CHANNEL_QUICKSDK:I = 0x6

.field public static final CHANNEL_REACT_NATIVE:I = 0x8

.field public static final CHANNEL_UNIAPP:I = 0x7

.field public static final CHANNEL_UNITY:I = 0x2

.field public static final SDK_VERSION_CODE:I

.field public static final SDK_VERSION_NAME:Ljava/lang/String;

.field private static volatile a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "-"

    const-string v1, "2024-10-16"

    const-string v2, "1.0.0"

    :try_start_0
    const-string v3, "."

    .line 41
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 42
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 45
    :goto_0
    sput v0, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    .line 46
    sput-object v2, Lcom/mob/MobSDK;->SDK_VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canIContinueBusiness(Lcom/mob/commons/MobProduct;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 273
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mob/MobSDK$2;

    invoke-direct {v0, p0, p2}, Lcom/mob/MobSDK$2;-><init>(Lcom/mob/commons/MobProduct;Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 271
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkForceHttps()Z
    .locals 1

    .line 90
    sget-boolean v0, Lcom/mob/commons/r;->f:Z

    return v0
.end method

.method public static checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-static {p0}, Lcom/mob/commons/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkV6()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/mob/commons/r;->g:Z

    return v0
.end method

.method public static dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-static {p0}, Lcom/mob/commons/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSecret()Ljava/lang/String;
    .locals 1

    .line 106
    sget-object v0, Lcom/mob/commons/r;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/mob/commons/r;->d:Ljava/lang/String;

    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/mob/commons/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppkey()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {}, Lcom/mob/commons/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 117
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 119
    :try_start_0
    invoke-static {}, Lcom/mob/commons/v;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    :cond_0
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getContextSafely()Landroid/content/Context;
    .locals 1

    .line 113
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultPrivacy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getDomain()Lcom/mob/commons/InternationalDomain;
    .locals 1

    .line 81
    sget-object v0, Lcom/mob/commons/r;->e:Lcom/mob/commons/InternationalDomain;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mob/commons/r;->e:Lcom/mob/commons/InternationalDomain;

    :goto_0
    return-object v0
.end method

.method public static getPrivacyGrantedStatus()I
    .locals 1

    .line 218
    invoke-static {}, Lcom/mob/commons/x;->c()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-static {p0, v1, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "SDK"

    const-string p1, "Init error, context is null"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    return-void

    .line 62
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    .line 64
    sput-object p1, Lcom/mob/commons/r;->a:Ljava/lang/String;

    .line 65
    sput-object p2, Lcom/mob/commons/r;->b:Ljava/lang/String;

    const/4 p0, 0x0

    .line 66
    invoke-static {p0}, Lcom/mob/commons/u;->a(Z)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/mob/commons/r;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 69
    sput-object p1, Lcom/mob/commons/r;->a:Ljava/lang/String;

    .line 70
    sput-object p2, Lcom/mob/commons/r;->b:Ljava/lang/String;

    const/4 p0, 0x1

    .line 71
    invoke-static {p0}, Lcom/mob/commons/u;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final isAuth()I
    .locals 1

    .line 163
    invoke-static {}, Lcom/mob/commons/u;->b()I

    move-result v0

    return v0
.end method

.method public static final isForb()Z
    .locals 1

    .line 154
    invoke-static {}, Lcom/mob/commons/u;->d()Z

    move-result v0

    return v0
.end method

.method public static final isGppVer()Z
    .locals 1

    .line 135
    sget-boolean v0, Lcom/mob/commons/r;->i:Z

    return v0
.end method

.method public static final isMob()Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/mob/commons/u;->c()Z

    move-result v0

    return v0
.end method

.method public static setChannel(Lcom/mob/commons/MobProduct;I)V
    .locals 1

    .line 167
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "isForb: true"

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/mob/commons/s;->a()Lcom/mob/commons/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/commons/s;->a(Lcom/mob/commons/MobProduct;I)V

    return-void
.end method

.method public static submitPolicyGrantResult(Lcom/mob/MobCustomController;Z)V
    .locals 0

    .line 189
    invoke-static {p1}, Lcom/mob/MobSDK;->submitPolicyGrantResult(Z)V

    .line 190
    invoke-static {p0}, Lcom/mob/MobSDK;->updateMobCustomController(Lcom/mob/MobCustomController;)V

    return-void
.end method

.method public static submitPolicyGrantResult(Z)V
    .locals 0

    .line 180
    invoke-static {p0}, Lcom/mob/commons/x;->b(Z)V

    return-void
.end method

.method public static submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-static {p0}, Lcom/mob/commons/x;->b(Z)V

    if-eqz p1, :cond_0

    .line 202
    new-instance p0, Lcom/mob/MobSDK$1;

    invoke-direct {p0, p1}, Lcom/mob/MobSDK$1;-><init>(Lcom/mob/OperationCallback;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_0
    return-void
.end method

.method public static syncGetBSDM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 233
    invoke-static {p0, p1, p2, p3}, Lcom/mob/commons/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateMobCustomController(Lcom/mob/MobCustomController;)V
    .locals 1

    .line 290
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/commons/CSCenter;->updateCustomController(Lcom/mob/MobCustomController;)V

    return-void
.end method
