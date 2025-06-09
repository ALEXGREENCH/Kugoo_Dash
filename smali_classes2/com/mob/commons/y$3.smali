.class Lcom/mob/commons/y$3;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/y;->m()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mob/commons/y;


# direct methods
.method constructor <init>(Lcom/mob/commons/y;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/mob/commons/y$3;->c:Lcom/mob/commons/y;

    iput-object p2, p0, Lcom/mob/commons/y$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/commons/y$3;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "rddd wv c "

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "061h)fjkgeeiigiiiEg)fgjlik4gdRemeeThCiigj?dgKfgedimemejfkejggjliikgjlieem0j3fkfj2dRfjijggKdWggemelgjfkijedifigif-d%iiigigjljl?d\'iggi"

    .line 327
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    new-instance v5, Ljava/util/UUID;

    const-wide v6, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v8, -0x5c37d8232ae2de13L

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    .line 331
    :try_start_0
    new-instance v15, Landroid/media/MediaDrm;

    invoke-direct {v15, v5}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v8

    .line 333
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v7, "012fej]ejeeFgVeigj8gj:ehFk"

    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x3

    new-array v12, v7, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v12, v14

    const-class v10, [B

    const/4 v13, 0x1

    aput-object v10, v12, v13

    const-class v10, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v10, v12, v16

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v10, v7, v14

    iget-object v10, v1, Lcom/mob/commons/y$3;->c:Lcom/mob/commons/y;

    .line 335
    invoke-static {v10, v5}, Lcom/mob/commons/y;->a(Lcom/mob/commons/y;Ljava/util/UUID;)[B

    move-result-object v5

    aput-object v5, v7, v13

    aput-object v4, v7, v16

    const/4 v4, 0x0

    move-object v10, v15

    move-object v13, v7

    move v5, v14

    move-object v14, v4

    .line 333
    invoke-virtual/range {v8 .. v14}, Lcom/mob/tools/a/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "014EedPgHeeejYdg5fl=f;ejefehTg$ffed"

    .line 336
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 337
    iget-object v7, v1, Lcom/mob/commons/y$3;->a:[Ljava/lang/String;

    array-length v8, v4

    invoke-static {v4, v5, v8}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    .line 338
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :try_start_2
    iget-object v0, v1, Lcom/mob/commons/y$3;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_0

    .line 347
    invoke-virtual {v15}, Landroid/media/MediaDrm;->close()V

    goto :goto_1

    .line 351
    :cond_0
    invoke-virtual {v15}, Landroid/media/MediaDrm;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v15

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 340
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 344
    :try_start_4
    iget-object v0, v1, Lcom/mob/commons/y$3;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    if-eqz v7, :cond_2

    .line 347
    invoke-virtual {v7}, Landroid/media/MediaDrm;->close()V

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    .line 351
    invoke-virtual {v7}, Landroid/media/MediaDrm;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 355
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 344
    :try_start_5
    iget-object v0, v1, Lcom/mob/commons/y$3;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    if-eqz v7, :cond_4

    .line 347
    invoke-virtual {v7}, Landroid/media/MediaDrm;->close()V

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 351
    invoke-virtual {v7}, Landroid/media/MediaDrm;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    .line 355
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 357
    :cond_4
    :goto_2
    throw v2
.end method
