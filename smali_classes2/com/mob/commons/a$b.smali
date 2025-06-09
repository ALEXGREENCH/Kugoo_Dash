.class Lcom/mob/commons/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "f6af99e2-2b64-4eb6-aba6-4d44fb935939"

    const-string v1, "00000000-0000-0000-0000-000000000000"

    const-string v2, "4c5f81a0-4728-476f-a57f-b46fa44f07d3"

    .line 625
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a$b;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/a$1;)V
    .locals 0

    .line 623
    invoke-direct {p0}, Lcom/mob/commons/a$b;-><init>()V

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    .line 777
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/a$b;->b(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 797
    :try_start_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 798
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr p1, v6

    .line 802
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 803
    :try_start_1
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    :try_start_2
    invoke-virtual {v7, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 805
    invoke-virtual {v7, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 806
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v7, p1, v1

    aput-object v6, p1, v0

    .line 810
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v7, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v6, v3

    move-object v7, v6

    .line 808
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v7, p1, v1

    aput-object v6, p1, v0

    .line 810
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    :goto_1
    return-object v3

    :catchall_3
    move-exception p1

    new-array p2, v2, [Ljava/io/Closeable;

    aput-object v7, p2, v1

    aput-object v6, p2, v0

    invoke-static {p2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 811
    throw p1
.end method

.method private c()V
    .locals 2

    .line 648
    sget v0, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {p0}, Lcom/mob/commons/a$b;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 649
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/ab;->i()Lcom/mob/commons/a$c;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a$b;->e()Lcom/mob/commons/a$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {v0}, Lcom/mob/commons/a$c;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {v0}, Lcom/mob/commons/a$c;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a$b;->b:Ljava/util/List;

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/a$b;->b:Ljava/util/List;

    if-nez v0, :cond_2

    .line 661
    sget-object v0, Lcom/mob/commons/a$b;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/mob/commons/a$b;->b:Ljava/util/List;

    :cond_2
    return-void
.end method

.method private d()I
    .locals 2

    .line 666
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private e()Lcom/mob/commons/a$c;
    .locals 7

    const-string v0, "RS is illegal: "

    const/4 v1, 0x0

    .line 673
    :try_start_0
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 674
    new-instance v3, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v4, 0x7d0

    .line 675
    iput v4, v3, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const/16 v4, 0x1388

    .line 676
    iput v4, v3, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v5

    const-string v6, "dg"

    invoke-virtual {v5, v6}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/getDuidBlacklist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-virtual {v2, v4, v1, v1, v3}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 680
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "006.dgGgbg-bedg"

    .line 681
    invoke-static {v4}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "200"

    .line 682
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "0041baObgb"

    .line 685
    invoke-static {v0}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    invoke-direct {p0}, Lcom/mob/commons/a$b;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v0}, Lcom/mob/commons/a$c;->a(Ljava/lang/String;)Lcom/mob/commons/a$c;

    move-result-object v0

    .line 689
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/commons/ab;->a(Lcom/mob/commons/a$c;)V

    return-object v0

    .line 683
    :cond_0
    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 694
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method private f()Ljava/lang/String;
    .locals 5

    const-string v0, "cvWe"

    const-string v1, "MqlWJL"

    const-string v2, "QvxJJ"

    const-string v3, "FYsAX"

    .line 705
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "uBs"

    const-string v2, "CDpnc"

    const-string v3, "akuRE"

    const-string v4, "wbMqR"

    .line 706
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mob/commons/a$a;
    .locals 1

    .line 640
    invoke-direct {p0}, Lcom/mob/commons/a$b;->c()V

    .line 642
    invoke-virtual {p0}, Lcom/mob/commons/a$b;->b()Lcom/mob/commons/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/mob/commons/a$a;
    .locals 11

    const-string v0, "s_"

    const-string v1, ":null:null"

    .line 716
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v4, v3, [Ljava/lang/String;

    .line 718
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v5

    .line 719
    invoke-virtual {v5}, Lcom/mob/tools/utils/DH$RequestBuilder;->getAdvertisingID()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/mob/commons/a$b$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/mob/commons/a$b$1;-><init>(Lcom/mob/commons/a$b;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 720
    invoke-virtual {v5, v6}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    .line 731
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v2, 0x0

    .line 737
    :try_start_1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getModel()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 742
    :goto_0
    invoke-static {}, Lcom/mob/commons/y;->a()Lcom/mob/commons/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/commons/y;->h()Ljava/lang/String;

    move-result-object v6

    .line 743
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v4, v8

    .line 745
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/mob/commons/a$b;->b:Ljava/util/List;

    aget-object v7, v4, v8

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v8

    goto :goto_1

    :cond_2
    move-object v6, v2

    .line 749
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/mob/commons/a$b;->a(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move v3, v8

    .line 753
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 756
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 757
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    .line 760
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    move-object v4, v2

    :goto_3
    if-eqz v3, :cond_5

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 765
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    .line 766
    new-instance v0, Lcom/mob/commons/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "client"

    const-wide/16 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/mob/commons/a$a;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/commons/ab;->a(Lcom/mob/commons/a$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v0

    :catchall_2
    move-exception v0

    .line 771
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v2
.end method
