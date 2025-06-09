.class public Lcom/mob/tools/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/b/d; = null

.field private static volatile d:Z = false


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[B

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile g:Ljava/io/File;

.field private h:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/lang/String;

.field private volatile j:I

.field private k:J

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 45
    iput-object v1, p0, Lcom/mob/tools/b/d;->e:[B

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mob/tools/b/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/b/d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mob/tools/b/d;->i:Ljava/lang/String;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/mob/tools/b/d;->j:I

    .line 69
    iput-object p1, p0, Lcom/mob/tools/b/d;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/b/d;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/mob/tools/b/d;->m:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/b/d;
    .locals 2

    .line 58
    sget-object v0, Lcom/mob/tools/b/d;->a:Lcom/mob/tools/b/d;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/mob/tools/b/d;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/mob/tools/b/d;->a:Lcom/mob/tools/b/d;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/mob/tools/b/d;

    invoke-direct {v1, p0}, Lcom/mob/tools/b/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/b/d;->a:Lcom/mob/tools/b/d;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/b/d;->a:Lcom/mob/tools/b/d;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/b/d;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/b/d;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/b/d;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/b/d;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "dhs d %d"

    const-string v1, "dhs d e: "

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 390
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 392
    :cond_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    const-string v10, "dhs d..."

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 394
    new-instance v9, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v9}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v9, p1, v8, v2}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 395
    invoke-static {p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 398
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object p1

    const/4 v9, -0x1

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v10, v3, p3}, Lcom/mob/commons/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    new-array p1, v6, [Ljava/io/Closeable;

    aput-object v8, p1, v7

    .line 415
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/mob/tools/b/d;->l:J

    new-array p3, v6, [Ljava/lang/Object;

    .line 418
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v7

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v3

    :cond_3
    new-array p2, v6, [Ljava/io/Closeable;

    aput-object v8, p2, v7

    .line 415
    invoke-static {p2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v4

    iput-wide p2, p0, Lcom/mob/tools/b/d;->l:J

    new-array v1, v6, [Ljava/lang/Object;

    .line 418
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array p3, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v8, v2

    .line 408
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 409
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 411
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 413
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mob/tools/b/d;->b()I

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v9, 0x2

    invoke-virtual {p2, v9, v1, p1, p3}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p1, v6, [Ljava/io/Closeable;

    aput-object v8, p1, v7

    .line 415
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/mob/tools/b/d;->l:J

    new-array p3, v6, [Ljava/lang/Object;

    .line 418
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v7

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    :catchall_2
    move-exception p1

    new-array p2, v6, [Ljava/io/Closeable;

    aput-object v8, p2, v7

    .line 415
    invoke-static {p2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v4

    iput-wide p2, p0, Lcom/mob/tools/b/d;->l:J

    new-array v1, v6, [Ljava/lang/Object;

    .line 418
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array p3, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 421
    throw p1

    :cond_8
    :goto_1
    return-object v3
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "dhs l %d"

    const-string v1, ""

    const-string v2, "dhs l e: "

    .line 262
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 264
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/ab;->c()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 268
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 269
    iget-object v5, p0, Lcom/mob/tools/b/d;->c:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 270
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mob/tools/b/d;->c:Ljava/util/HashMap;

    .line 271
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v7, "cacheMap"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v5, p0, Lcom/mob/tools/b/d;->c:Ljava/util/HashMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v7, "invokeTimesMap"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v5, p0, Lcom/mob/tools/b/d;->c:Ljava/util/HashMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v7, "expireTimeMap"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 280
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v11, p0, Lcom/mob/tools/b/d;->c:Ljava/util/HashMap;

    invoke-static {v10, p1, v4, v3, v11}, Lcom/mob/commons/cc/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    iput-wide p1, p0, Lcom/mob/tools/b/d;->k:J

    .line 293
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v7, [Ljava/lang/Object;

    .line 294
    iget-wide v1, p0, Lcom/mob/tools/b/d;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 296
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v9, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 283
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 288
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/b/d;->b()I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v4, p1, p2}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    :catchall_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    iput-wide p1, p0, Lcom/mob/tools/b/d;->k:J

    .line 293
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v7, [Ljava/lang/Object;

    .line 294
    iget-wide v1, p0, Lcom/mob/tools/b/d;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 296
    :cond_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v9, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-object v3
.end method

.method static synthetic a(Lcom/mob/tools/b/d;Ljava/io/File;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mob/tools/b/d;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/mob/tools/b/d;->g:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/b/d;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/mob/tools/b/d;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "dhs dof succ"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "dhs dof fail"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 233
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mob/tools/b/d;->g:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/b/d;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mob/tools/b/d;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 28
    sput-boolean p0, Lcom/mob/tools/b/d;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/mob/tools/b/d;)[B
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/tools/b/d;->e:[B

    return-object p0
.end method

.method private b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 350
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 353
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-direct {p0, p2}, Lcom/mob/tools/b/d;->d(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mob/tools/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 328
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/mob/tools/b/d;Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/b/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/mob/tools/b/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/tools/b/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/tools/b/d;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/tools/b/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mob/tools/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 343
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static c()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/mob/tools/b/d;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/mob/tools/b/d;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/tools/b/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/mob/tools/b/d;->i:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/mob/tools/b/d;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 363
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "002[eheh"

    .line 308
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/commons/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "009;eheecidkefch;hbg"

    .line 310
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/commons/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 314
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic e(Lcom/mob/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/tools/b/d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    .line 374
    invoke-direct {p0, p1}, Lcom/mob/tools/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0, p1}, Lcom/mob/tools/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic f(Lcom/mob/tools/b/d;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/mob/tools/b/d;->m:J

    return-wide v0
.end method

.method static synthetic g(Lcom/mob/tools/b/d;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/mob/tools/b/d;->k:J

    return-wide v0
.end method

.method static synthetic h(Lcom/mob/tools/b/d;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/mob/tools/b/d;->l:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/mob/tools/b/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/b/d;->a(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 4

    .line 95
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 97
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dhs ofr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 98
    iget-object v1, p0, Lcom/mob/tools/b/d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/mob/commons/z;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/tools/b/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/mob/tools/b/d$1;-><init>(Lcom/mob/tools/b/d;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/mob/tools/b/d;->j:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/mob/tools/b/d;->j:I

    return v0
.end method

.method public d()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mob/tools/b/d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mob/tools/b/d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
