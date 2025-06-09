.class public Lcom/mob/commons/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/c$b;,
        Lcom/mob/commons/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/commons/c;

.field private static volatile b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const-string v0, "_1"

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/m;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xc800000

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 60
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/m;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "008OekBchcSejKeci"

    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/c;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .line 63
    sget-object v0, Lcom/mob/commons/c;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "004h:chceOe"

    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "004heTdh<h"

    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    sget-object v0, Lcom/mob/commons/c;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "004?cb2chc"

    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "004heNdh]h"

    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    invoke-static {}, Lcom/mob/commons/c$b;->a()Lcom/mob/commons/c$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0xb4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mob/commons/a/l;->a(JILcom/mob/commons/c$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 70
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/c;
    .locals 2

    const-class v0, Lcom/mob/commons/c;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/mob/commons/c;->a:Lcom/mob/commons/c;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/mob/commons/c;

    invoke-direct {v1}, Lcom/mob/commons/c;-><init>()V

    sput-object v1, Lcom/mob/commons/c;->a:Lcom/mob/commons/c;

    .line 50
    :cond_0
    sget-object v1, Lcom/mob/commons/c;->a:Lcom/mob/commons/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a([I)Ljava/lang/String;
    .locals 5

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 588
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 589
    invoke-static {}, Lcom/mob/commons/x;->f()Ljava/lang/String;

    move-result-object v2

    .line 590
    aget v3, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 591
    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static/range {p0 .. p5}, Lcom/mob/commons/c;->b(Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/mob/tools/utils/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDeviceKey()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMIUIVersion()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getAdvertisingID()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/c$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/commons/c$1;-><init>(Ljava/util/ArrayList;Lcom/mob/tools/utils/e;)V

    .line 484
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 582
    invoke-virtual {p1, p0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x4

    .line 398
    :try_start_0
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mob/commons/h;->a(I)V

    .line 399
    invoke-static {p0}, Lcom/mob/commons/c;->b([Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :try_start_1
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v1, 0x0

    .line 401
    :try_start_2
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p0}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 404
    :try_start_3
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 406
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    .line 404
    :try_start_4
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    .line 406
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V

    .line 408
    :goto_1
    throw p0
.end method

.method static synthetic a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mob/commons/c;->b(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 1

    .line 41
    sget-object v0, Lcom/mob/commons/c;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    return-object v0
.end method

.method private static varargs b([Ljava/lang/Object;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 413
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 414
    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    .line 415
    aget-object v5, p0, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x5

    .line 416
    aget-object v6, p0, v6

    check-cast v6, Ljava/lang/String;

    .line 417
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 420
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "003Aeh<bb"

    invoke-static {v10}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x2

    .line 421
    aget-object v10, p0, v9

    check-cast v10, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v11, 0x3

    .line 424
    :try_start_1
    aget-object p0, p0, v11

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move p0, v0

    :goto_0
    if-eqz v10, :cond_0

    if-lez p0, :cond_0

    .line 427
    :try_start_2
    array-length v11, v10

    if-lt v11, p0, :cond_0

    invoke-static {v10, v0, p0}, Lcom/mob/tools/utils/Data;->MD5([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 428
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10, v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_1

    .line 430
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v10, "008b!cjYdVdeckeh_bb"

    invoke-static {v10}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 432
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 435
    :cond_1
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v10

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Lcom/mob/commons/h;->a(I)V

    .line 436
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object v11, v8

    :goto_1
    if-eqz v11, :cond_4

    .line 440
    :try_start_3
    new-instance p0, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 442
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_2
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "004:ckfcch<i"

    invoke-static {v12}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, p0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 447
    :try_start_4
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 448
    :try_start_5
    invoke-static {v3, v11, v10}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v11, v3, v0

    aput-object v10, v3, v2

    .line 450
    invoke-static {v3}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 455
    :try_start_7
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/commons/j;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 456
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v1

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Lcom/mob/commons/h;->a(I)V

    goto :goto_2

    .line 458
    :cond_3
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3

    const/16 v9, 0xe

    invoke-virtual {v3, v9}, Lcom/mob/commons/h;->a(I)V

    .line 459
    invoke-static {v1, v7, v5, v6}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 465
    :goto_2
    :try_start_8
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 467
    :try_start_9
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3

    :goto_3
    invoke-virtual {v3, v4, v1}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_6

    :catchall_2
    move-exception v1

    .line 462
    :try_start_a
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v1}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 465
    :try_start_b
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    .line 467
    :try_start_c
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 465
    :try_start_d
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    .line 467
    :try_start_e
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3

    invoke-virtual {v3, v4, p0}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V

    .line 469
    :goto_4
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_6
    move-exception p0

    goto :goto_5

    :catchall_7
    move-exception p0

    move-object v10, v8

    :goto_5
    :try_start_f
    new-array v1, v9, [Ljava/io/Closeable;

    aput-object v11, v1, v0

    aput-object v10, v1, v2

    .line 450
    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 452
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :catchall_8
    move-exception p0

    move-object v8, v11

    goto :goto_7

    :cond_4
    move-object p0, v8

    move-object v8, v11

    :goto_6
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v8, v1, v0

    .line 472
    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    move-object v8, p0

    goto :goto_8

    :catchall_9
    move-exception p0

    :goto_7
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v8, v1, v0

    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 473
    throw p0

    :cond_5
    :goto_8
    return-object v8
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/mob/commons/c$2;

    move-object v1, v8

    move v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/c$2;-><init>(ZLjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 668
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z
    .locals 15

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 673
    :try_start_0
    const-class v3, Lcom/mob/tools/c/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 677
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v2

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v4, :cond_3

    aget-object v9, v3, v6

    .line 678
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 680
    array-length v11, v10

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    if-eqz v13, :cond_0

    .line 681
    invoke-interface {v13}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Lcom/mob/tools/c/b;

    if-ne v13, v14, :cond_0

    move v7, v8

    move-object v5, v9

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 694
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v5}, Lcom/mob/commons/cc/a;->a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_4

    .line 696
    :cond_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-static {v0, v3, v1, v5}, Lcom/mob/commons/cc/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    return v8

    :catchall_0
    move-exception v0

    .line 702
    :try_start_1
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v1

    const/4 v3, 0x6

    move-object v4, p0

    move/from16 v5, p1

    invoke-virtual {v1, v3, v5, v0, p0}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return v2
.end method


# virtual methods
.method public a(JLjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    .line 78
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DH PD: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "004h)dbMie"

    invoke-static {v3}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/mob/commons/z;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1, p2, p3}, Lcom/mob/commons/c$a;->a(JLjava/util/HashMap;)Lcom/mob/commons/c$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
