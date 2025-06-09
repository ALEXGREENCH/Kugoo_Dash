.class Lcom/mob/tools/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/d;->a(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mob/tools/b/d;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/d;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    iput-object p2, p0, Lcom/mob/tools/b/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    move-object/from16 v1, p0

    const-string v0, ""

    const-string v2, "-t-"

    const-string v3, ""

    const-string v4, "dhs tt "

    const-string v5, ""

    const-string v6, ""

    const-string v7, "dhs ctd: "

    const-string v8, "-t-"

    const-string v9, ""

    const-string v10, "dhs tbm: "

    const-string v11, "-t-"

    const-string v12, "dhs cl:  tm5: "

    const-string v13, "dhs tt "

    const-string v14, "dhs cld nm "

    const-string v15, "dhs m5: "

    move-object/from16 v16, v9

    const-string v9, "-t-"

    move-object/from16 v17, v6

    const-string v6, "dhs tt "

    move-object/from16 v18, v9

    const-string v9, "-t-"

    move-object/from16 v19, v9

    const-string v9, "dhs ctd: "

    move-object/from16 v20, v0

    const-string v0, "dhs cac: "

    move-object/from16 v21, v2

    const-string v2, "dhs tt "

    move-object/from16 v22, v2

    const-string v2, "dhs ctd: "

    move-object/from16 v23, v4

    const-string v4, "dhs tt "

    move-object/from16 v24, v4

    const-string v4, "dhs ctd: "

    move-object/from16 v25, v4

    const-string v4, "dhs ctd: "

    move-object/from16 v26, v4

    const-string v4, "dhs oops: "

    move-object/from16 v27, v4

    const-string v4, "dhs stch: "

    move-object/from16 v28, v7

    .line 102
    iget-object v7, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v7}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;)[B

    move-result-object v7

    monitor-enter v7

    move-object/from16 v29, v12

    .line 103
    :try_start_0
    sget-object v12, Lcom/mob/tools/c/a;->c:Ljava/lang/ThreadLocal;

    move-object/from16 v30, v10

    const/4 v10, 0x1

    move-object/from16 v31, v15

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v34, 0xdac

    .line 109
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    iget-object v12, v1, Lcom/mob/tools/b/d$1;->a:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v15, v4, v12}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 110
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v12, "003PcbcbTg"

    invoke-static {v12}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    iget-object v10, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    iget-object v12, v1, Lcom/mob/tools/b/d$1;->a:Ljava/lang/String;

    invoke-static {v10, v12}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    .line 114
    invoke-static {v10}, Lcom/mob/tools/b/d;->a(Z)Z

    .line 115
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 199
    :try_start_2
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v32

    invoke-static {v0, v3, v4}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;J)J

    .line 200
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->e(Lcom/mob/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 206
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    cmp-long v0, v2, v34

    if-lez v0, :cond_0

    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-virtual {v0}, Lcom/mob/tools/b/d;->b()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-d-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    .line 208
    invoke-static {v2}, Lcom/mob/tools/b/d;->h(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-l-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->g(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xb

    const/4 v5, 0x3

    .line 209
    invoke-virtual {v2, v5, v4, v3, v0}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    return-void

    .line 118
    :cond_1
    :try_start_3
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/mob/tools/b/d;->a(I)V

    .line 120
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    iget-object v6, v1, Lcom/mob/tools/b/d$1;->a:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/mob/tools/b/d;->b(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    invoke-static {v5}, Lcom/mob/tools/b/d;->a(Z)Z

    .line 124
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v0

    const-string v2, ""

    const-string v4, ""

    const/4 v5, -0x1

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6, v2, v4}, Lcom/mob/commons/g;->a(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 199
    :try_start_4
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v32

    invoke-static {v0, v4, v5}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;J)J

    .line 200
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->e(Lcom/mob/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 206
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    cmp-long v0, v4, v34

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-virtual {v0}, Lcom/mob/tools/b/d;->b()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-d-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    .line 208
    invoke-static {v2}, Lcom/mob/tools/b/d;->h(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-l-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->g(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v2

    new-instance v4, Ljava/lang/Throwable;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    const/4 v5, 0x3

    .line 209
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    :cond_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    return-void

    .line 129
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v3

    if-nez v3, :cond_5

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    .line 133
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v5, ":"

    const-string v6, ""

    .line 135
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_0
    :cond_5
    move-object v3, v2

    .line 141
    :catchall_1
    :goto_0
    :try_start_7
    iget-object v5, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v5, v4, v3}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 143
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 144
    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_9

    .line 146
    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/mob/tools/b/d;->a(I)V

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 149
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v8, v31

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v4, :cond_7

    .line 151
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/mob/tools/b/d;->a(I)V

    .line 153
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, v2}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 157
    :cond_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v5}, Lcom/mob/tools/b/d;->b(Lcom/mob/tools/b/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 159
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    .line 158
    invoke-static {v2}, Lcom/mob/tools/b/d;->b(Lcom/mob/tools/b/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v4, 0x1

    .line 159
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const-string v0, ""

    goto :goto_2

    .line 163
    :cond_9
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/mob/tools/b/d;->a(I)V

    .line 164
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, v2}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cm5: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v5}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 171
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2, v3}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;Ljava/io/File;)V

    .line 172
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2, v3, v0}, Lcom/mob/tools/b/d;->b(Lcom/mob/tools/b/d;Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 174
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 175
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v4, "dhs l succ"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 176
    new-instance v2, Lcom/mob/tools/b/f;

    invoke-direct {v2, v0}, Lcom/mob/tools/b/f;-><init>(Ljava/util/HashMap;)V

    .line 178
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/b/d;->d(Lcom/mob/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->d(Lcom/mob/tools/b/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mob/tools/b/c;->a(Lcom/mob/tools/b/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/mob/tools/b/d;->a(Z)Z

    .line 182
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/mob/tools/b/d;->a(I)V

    .line 183
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "dhs fin"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 186
    :cond_a
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 192
    :catchall_2
    :cond_b
    :try_start_9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "dhs l fail"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 199
    :cond_c
    :goto_3
    :try_start_a
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v32

    invoke-static {v0, v2, v3}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;J)J

    .line 200
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->e(Lcom/mob/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 206
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    cmp-long v0, v2, v34

    if-lez v0, :cond_d

    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-virtual {v0}, Lcom/mob/tools/b/d;->b()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_d

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-d-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    .line 208
    invoke-static {v2}, Lcom/mob/tools/b/d;->h(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-l-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->g(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xb

    const/4 v5, 0x3

    .line 209
    :goto_4
    invoke-virtual {v2, v5, v4, v3, v0}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    .line 196
    :try_start_b
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 197
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 199
    :try_start_c
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v32

    invoke-static {v0, v2, v3}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;J)J

    .line 200
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->e(Lcom/mob/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 206
    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v0}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    cmp-long v0, v2, v34

    if-lez v0, :cond_d

    iget-object v0, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-virtual {v0}, Lcom/mob/tools/b/d;->b()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_d

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-d-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    .line 208
    invoke-static {v2}, Lcom/mob/tools/b/d;->h(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-l-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->g(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xb

    const/4 v5, 0x3

    goto/16 :goto_4

    .line 213
    :cond_d
    :goto_5
    sget-object v0, Lcom/mob/tools/c/a;->c:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 214
    monitor-exit v7

    return-void

    :catchall_4
    move-exception v0

    .line 199
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v32

    invoke-static {v2, v3, v4}, Lcom/mob/tools/b/d;->a(Lcom/mob/tools/b/d;J)J

    .line 200
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->e(Lcom/mob/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 206
    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v2}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v2

    cmp-long v2, v2, v34

    if-lez v2, :cond_e

    iget-object v2, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-virtual {v2}, Lcom/mob/tools/b/d;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_e

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v4}, Lcom/mob/tools/b/d;->f(Lcom/mob/tools/b/d;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-d-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    .line 208
    invoke-static {v3}, Lcom/mob/tools/b/d;->h(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-l-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v3}, Lcom/mob/tools/b/d;->g(Lcom/mob/tools/b/d;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/mob/tools/b/d$1;->c:Lcom/mob/tools/b/d;

    invoke-static {v5}, Lcom/mob/tools/b/d;->c(Lcom/mob/tools/b/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb

    const/4 v6, 0x3

    .line 209
    invoke-virtual {v3, v6, v5, v4, v2}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 212
    :cond_e
    throw v0

    :catchall_5
    move-exception v0

    .line 214
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0
.end method
