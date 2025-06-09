.class public Lcom/mob/tools/utils/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/utils/f;


# instance fields
.field private volatile b:Ljava/util/List;

.field private volatile c:Ljava/util/List;

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Lcom/mob/tools/utils/f$a;

.field private volatile i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/f;->b:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    .line 39
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/f;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/mob/tools/utils/f;
    .locals 2

    .line 43
    sget-object v0, Lcom/mob/tools/utils/f;->a:Lcom/mob/tools/utils/f;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/mob/tools/utils/f;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/f;->a:Lcom/mob/tools/utils/f;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/mob/tools/utils/f;

    invoke-direct {v1}, Lcom/mob/tools/utils/f;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/f;->a:Lcom/mob/tools/utils/f;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/f;->a:Lcom/mob/tools/utils/f;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/utils/f;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/content/Context;IIZ)Ljava/util/List;
    .locals 6

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "039fgAfeflfmfkfefn-lh_flfhfkhkhkfkfm_g)fnhfgfgfikgngnfjiegggiikfjhgijgfhfheggijgi"

    .line 263
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "041fgLfeflfmfkfefn,lh*flfhfkhkhkfkfmDgNfnhfgfgfikgngnfjgfijhfilgnikfjhgijgfhfheggijgi"

    .line 264
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_8

    .line 266
    iget-object v1, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, "008i-fm%efkOfkfmEg"

    .line 267
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 273
    :cond_3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    const-string v4, "003Hgl6lQhk"

    invoke-static {v4}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/mob/tools/utils/f;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "003=gl;l$hk"

    .line 277
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v4, p2

    invoke-direct {p0, p1, v1, v4, v5}, Lcom/mob/tools/utils/f;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    move p2, v3

    goto :goto_4

    :cond_6
    move p2, v2

    :goto_4
    if-eqz p2, :cond_7

    .line 282
    iget-object p2, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    const-string v1, "007ghkYhifmflgj"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/mob/tools/utils/f;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "007ghk(hifmflgj"

    .line 283
    invoke-static {p2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v4, p3

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/mob/tools/utils/f;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 285
    :cond_7
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 288
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz p4, :cond_b

    const-string p1, "003)gl2l+hk"

    .line 289
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 291
    iget-object p2, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_9
    iget-object p1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "007ghkLhifmflgj"

    .line 294
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 296
    iget-object p2, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_a
    iget-object p1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "passive"

    .line 300
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 302
    iget-object p2, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_b
    iget-object p1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 308
    iget-object p1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 310
    iget-object p3, p0, Lcom/mob/tools/utils/f;->b:Ljava/util/List;

    const-string p4, "025fg1feflfmfkfefn\'iTfm*efkZfkfm,g]fnhgfm,efk0fkfmCg"

    invoke-static {p4}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p4, v1}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "025fgWfeflfmfkfefnWi fm+efk_fkfm?g<fnhgfm@efkPfkfm<g"

    .line 311
    invoke-static {p3}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-static {p3, p4}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 315
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mob/tools/utils/f;->g:J

    .line 317
    iget-object p1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 320
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_e
    :goto_8
    return-object v0
.end method

.method private a(Z)Ljava/util/List;
    .locals 5

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 406
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/utils/f;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mob/tools/utils/f;->g:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x2bf20

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/mob/tools/utils/f;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "025fg)feflfmfkfefn8iBfmUefkTfkfmBg*fnhgfm;efk]fkfm!g"

    .line 409
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/utils/f;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 417
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 341
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/tools/utils/f;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 344
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/mob/tools/b/h;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v1, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 349
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[212] cur err "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 350
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/tools/utils/f;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    .line 375
    invoke-static {}, Lcom/mob/commons/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "017<fkhkinflfmfffkfeIhKflik6gf3hhLihKfe"

    .line 376
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {p1, v0, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/mob/tools/utils/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 328
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 331
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 333
    :catchall_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .line 356
    invoke-static {}, Lcom/mob/commons/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mob/tools/utils/f;->e:Ljava/lang/Object;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;JFLjava/lang/Object;)V

    .line 359
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 361
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 364
    :goto_0
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->i()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mob/tools/utils/f;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->h()V

    return-void
.end method

.method static synthetic d(Lcom/mob/tools/utils/f;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mob/tools/utils/f;->c:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 77
    invoke-static {}, Lcom/mob/commons/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "039fgGfeflfmfkfefnUlhPflfhfkhkhkfkfmNgOfnhfgfgfikgngnfjiegggiikfjhgijgfhfheggijgi"

    .line 79
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string v2, "008iVfmLefkEfkfmTg"

    .line 82
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    if-nez v2, :cond_1

    return-void

    .line 87
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v2, v3, :cond_2

    .line 88
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/a/l;->b()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/utils/f$1;

    invoke-direct {v3, p0}, Lcom/mob/tools/utils/f$1;-><init>(Lcom/mob/tools/utils/f;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    .line 101
    iget-object v2, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    const-string v3, "0262flPh.glfkhk%kh flkf^g2hkhkgnHkfk@fihkgfRfii,hhKfeEgj"

    invoke-static {v3}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->g()Landroid/location/GnssStatus$Callback;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/commons/a/l;->b()Landroid/os/Handler;

    move-result-object v6

    aput-object v6, v5, v0

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Landroid/location/GnssStatus$Callback;

    aput-object v6, v4, v1

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v0

    .line 101
    invoke-static {v2, v3, v5, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "[212] rg >= 31"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 108
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "[212]"

    aput-object v4, v0, v1

    const-string v1, "%s"

    invoke-virtual {v3, v2, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private e()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "018QfmBg(kf>l hkgnWkfkLfihkgf$jfgOgl3h2fe"

    .line 118
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/utils/f$2;

    invoke-direct {v3, p0}, Lcom/mob/tools/utils/f$2;-><init>(Lcom/mob/tools/utils/f;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/mob/tools/utils/f$3;

    invoke-direct {v2, p0, v1}, Lcom/mob/tools/utils/f$3;-><init>(Lcom/mob/tools/utils/f;I)V

    const-string v3, "equals"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "008jf+hkEj_gffmfeRh"

    .line 136
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/utils/f$4;

    invoke-direct {v3, p0, v1}, Lcom/mob/tools/utils/f$4;-><init>(Lcom/mob/tools/utils/f;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "026fg8feflfmfkfefnWi^fm5efkLfkfm)g1fnkfDlBhkgn_kfk*fihk"

    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "008^hgfkhk\'khghMfl"

    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 143
    invoke-static {v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/mob/tools/utils/f;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->i()V

    return-void
.end method

.method private f()Ljava/lang/Object;
    .locals 4

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :try_start_0
    const-string v2, "0178fm^g5hgfm\'efkCfkfm$gLgfXjfg]glLh?fe"

    .line 152
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/utils/f$5;

    invoke-direct {v3, p0}, Lcom/mob/tools/utils/f$5;-><init>(Lcom/mob/tools/utils/f;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "equals"

    .line 178
    new-instance v3, Lcom/mob/tools/utils/f$6;

    invoke-direct {v3, p0, v1}, Lcom/mob/tools/utils/f$6;-><init>(Lcom/mob/tools/utils/f;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "008jf*hk(jEgffmfeCh"

    .line 188
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/utils/f$7;

    invoke-direct {v3, p0, v1}, Lcom/mob/tools/utils/f$7;-><init>(Lcom/mob/tools/utils/f;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 195
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->j()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 197
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private g()Landroid/location/GnssStatus$Callback;
    .locals 2

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v0, Lcom/mob/tools/utils/f$8;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/f$8;-><init>(Lcom/mob/tools/utils/f;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private h()V
    .locals 5

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/f;->h:Lcom/mob/tools/utils/f$a;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/mob/tools/utils/f$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 222
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[cl]"

    aput-object v4, v2, v3

    const-string v3, "%s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private i()V
    .locals 6

    .line 369
    iget-object v0, p0, Lcom/mob/tools/utils/f;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/mob/tools/utils/f;->d:Ljava/lang/Object;

    const-string v1, "013]fl2hHfhfmff6hDgmIl3feUfkh(hk"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/tools/utils/f;->e:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {p0}, Lcom/mob/tools/utils/f;->j()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private j()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/mob/tools/utils/f;->f:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "033fg feflfmfkfefn1i:fm3efk^fkfm\'gUfnhgfmQefk$fkfm gKhgfkhk5khgh6fl"

    .line 386
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/f;->f:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/f;->f:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;IIZZ)Ljava/util/List;
    .locals 2

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/CSCenter;->isLocationDataEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/f;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const-class v1, Lcom/mob/tools/utils/f;

    monitor-enter v1

    .line 247
    :try_start_0
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/f;->a(Z)Ljava/util/List;

    move-result-object p5

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/tools/utils/f;->a(Landroid/content/Context;IIZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 254
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/commons/CSCenter;->getLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Lcom/mob/tools/utils/f$a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mob/tools/utils/f;->h:Lcom/mob/tools/utils/f$a;

    .line 70
    invoke-direct {p0}, Lcom/mob/tools/utils/f;->d()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 428
    iput-object p1, p0, Lcom/mob/tools/utils/f;->i:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "003SglMl>hk"

    .line 444
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "039fg*feflfmfkfefnTlh+flfhfkhkhkfkfm=gDfnhfgfgfikgngnfjiegggiikfjhgijgfhfheggijgi"

    .line 445
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "007ghkVhifmflgj"

    .line 446
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "039fgQfeflfmfkfefnZlhBflfhfkhkhkfkfm gWfnhfgfgfikgngnfjiegggiikfjhgijgfhfheggijgi"

    .line 447
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "007ghk(hifmflgj"

    .line 448
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "041fgDfeflfmfkfefnSlhSflfhfkhkhkfkfm_gIfnhfgfgfikgngnfjgfijhfilgnikfjhgijgfhfheggijgi"

    .line 449
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "passive"

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "039fgEfeflfmfkfefn:lhHflfhfkhkhkfkfmSg:fnhfgfgfikgngnfjiegggiikfjhgijgfhfheggijgi"

    .line 451
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 452
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "041fg\'feflfmfkfefnWlhXflfhfkhkhkfkfm8gFfnhfgfgfikgngnfjgfijhfilgnikfjhgijgfhfheggijgi"

    .line 453
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/mob/tools/utils/f;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const-string v0, "003WglSlPhk"

    .line 440
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
