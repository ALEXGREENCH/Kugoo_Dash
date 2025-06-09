.class public final Lcom/mob/tools/utils/DH$SyncMtd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/DH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncMtd"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2301
    invoke-static {p0, p1}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkPermission(Ljava/lang/String;)Z
    .locals 1

    .line 2270
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mob/tools/b/a;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static currentActivityThread()Ljava/lang/Object;
    .locals 1

    .line 2308
    invoke-static {}, Lcom/mob/commons/v;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAppLanguage()Ljava/lang/String;
    .locals 1

    .line 2344
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()I
    .locals 1

    .line 2402
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->V()I

    move-result v0

    return v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 2290
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/content/Context;
    .locals 1

    .line 2316
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->aa()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 2398
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 2282
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 2390
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 2383
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSCountry()Ljava/lang/String;
    .locals 1

    .line 2351
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSLanguage()Ljava/lang/String;
    .locals 1

    .line 2337
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersionInt()I
    .locals 1

    .line 2323
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->s()I

    move-result v0

    return v0
.end method

.method public static getOSVersionName()Ljava/lang/String;
    .locals 1

    .line 2330
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 2278
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatformCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getSandboxPath()Ljava/lang/String;
    .locals 1

    .line 2266
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2406
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2259
    invoke-static {p0}, Lcom/mob/commons/v;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTimezone()Ljava/lang/String;
    .locals 1

    .line 2358
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .locals 0

    .line 2367
    invoke-static {p0}, Lcom/mob/commons/v;->a(Landroid/view/View;)V

    return-void
.end method

.method public static varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2217
    invoke-static {p0, p1, v0, p2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 2232
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2234
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    const/4 p2, 0x0

    const-string p3, ": "

    const-string v0, "Exception: "

    if-eqz p1, :cond_1

    .line 2235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2236
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2237
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2240
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2242
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2243
    :cond_1
    instance-of p1, p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz p1, :cond_2

    .line 2244
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2246
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInMainProcess()Z
    .locals 1

    .line 2274
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->X()Z

    move-result v0

    return v0
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .locals 0

    .line 2376
    invoke-static {p0}, Lcom/mob/commons/v;->b(Landroid/view/View;)V

    return-void
.end method
