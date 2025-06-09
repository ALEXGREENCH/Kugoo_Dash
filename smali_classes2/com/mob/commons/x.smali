.class public Lcom/mob/commons/x;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z = true

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:Lcom/mob/commons/w;

.field private static volatile f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mob/commons/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/x;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/x;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lcom/mob/commons/w;

    invoke-direct {v0}, Lcom/mob/commons/w;-><init>()V

    sput-object v0, Lcom/mob/commons/x;->e:Lcom/mob/commons/w;

    return-void
.end method

.method public static a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 130
    sget-object v0, Lcom/mob/commons/x;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/ab;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/ab;->a(J)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/r;->a(Landroid/content/Context;)V

    .line 138
    invoke-static {}, Lcom/mob/commons/x;->k()V

    .line 140
    invoke-static {}, Lcom/mob/commons/x;->l()V

    .line 142
    invoke-static {}, Lcom/mob/commons/aa;->a()V

    .line 152
    invoke-static {}, Lcom/mob/commons/q;->a()Lcom/mob/commons/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/q;->b()V

    .line 154
    new-instance v0, Lcom/mob/commons/x$2;

    const-string v1, "PY-C"

    invoke-direct {v0, v1, p0}, Lcom/mob/commons/x$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 174
    invoke-virtual {v0}, Lcom/mob/commons/x$2;->start()V

    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 41
    sget-object v0, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/mob/commons/x$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/x$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/mob/commons/x;->b(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(ZZ)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/mob/commons/x;->b(ZZ)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 216
    sget-boolean v0, Lcom/mob/commons/x;->a:Z

    return v0
.end method

.method public static b(Z)V
    .locals 3

    .line 225
    sget-object v0, Lcom/mob/commons/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 226
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "submit py: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 227
    new-instance v0, Lcom/mob/commons/x$4;

    const-string v1, "004,inknjmjg"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mob/commons/x$4;-><init>(Ljava/lang/String;Z)V

    .line 264
    invoke-virtual {v0}, Lcom/mob/commons/x$4;->start()V

    return-void
.end method

.method private static b(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 292
    invoke-static {p1}, Lcom/mob/commons/u;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "009Jfkhkhfglfl.hhSinKl"

    .line 293
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v0

    const-string v1, "gclg"

    invoke-virtual {v0, v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "036nl_flfkff;fe6geEnlCfmYi3fk8e8geYnf5fiOkj^fmflfkifKfk5fkfm3gn3hkOkfkOfihk"

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "003$gjMh(ge"

    .line 296
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "013Ugmhk(h?fljmggfe1hgkBfkLk?ge"

    .line 297
    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/aa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RS sp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 300
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "004eMfmfe4h"

    .line 304
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "200"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RS code is not 200: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RS is illegal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(ZZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 74
    sget-object v0, Lcom/mob/commons/x;->e:Lcom/mob/commons/w;

    invoke-virtual {v0}, Lcom/mob/commons/w;->a()V

    :cond_0
    if-eqz p0, :cond_8

    .line 78
    sget-object p0, Lcom/mob/commons/r;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 80
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/commons/ab;->k()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/mob/commons/x;->i()Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    sput-object p0, Lcom/mob/commons/r;->c:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/commons/ab;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    sget-object p0, Lcom/mob/commons/r;->a:Ljava/lang/String;

    sput-object p0, Lcom/mob/commons/r;->c:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    sget-object v0, Lcom/mob/commons/r;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mob/commons/ab;->e(Ljava/lang/String;)V

    .line 94
    :cond_3
    :goto_0
    sget-object p0, Lcom/mob/commons/r;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 95
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/commons/ab;->l()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    sput-object p0, Lcom/mob/commons/r;->d:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_4
    sget-object p0, Lcom/mob/commons/r;->b:Ljava/lang/String;

    sput-object p0, Lcom/mob/commons/r;->d:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    sget-object v0, Lcom/mob/commons/r;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mob/commons/ab;->f(Ljava/lang/String;)V

    .line 105
    :cond_5
    :goto_1
    invoke-static {}, Lcom/mob/commons/x;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    .line 106
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v0

    .line 107
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    if-eqz v0, :cond_6

    const-string v0, "main"

    goto :goto_2

    :cond_6
    const-string v0, "sub"

    :goto_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez p1, :cond_7

    .line 112
    invoke-static {p0}, Lcom/mob/commons/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_3

    .line 115
    :cond_7
    invoke-static {}, Lcom/mob/commons/aa;->a()V

    .line 117
    invoke-static {}, Lcom/mob/commons/b;->h()V

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    .line 123
    sget-object p0, Lcom/mob/commons/x;->e:Lcom/mob/commons/w;

    invoke-virtual {p0}, Lcom/mob/commons/w;->b()V

    :cond_9
    :goto_3
    return-void
.end method

.method public static b()Z
    .locals 2

    .line 220
    sget-object v0, Lcom/mob/commons/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c()I
    .locals 3

    .line 268
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get py grtd status mem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mob/commons/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 269
    sget-object v0, Lcom/mob/commons/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 27
    sput-boolean p0, Lcom/mob/commons/x;->a:Z

    return p0
.end method

.method public static d()I
    .locals 2

    .line 273
    invoke-static {}, Lcom/mob/commons/x;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 277
    :cond_0
    invoke-static {}, Lcom/mob/commons/x;->e()I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 4

    .line 283
    invoke-static {}, Lcom/mob/commons/ab;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v2, Lcom/mob/commons/ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/mob/commons/ab;->b(Ljava/lang/String;I)I

    move-result v1

    .line 286
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get py grtd status cac: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "ecpgnjvr<1fxsowaktq0{EKhPmziWUVCNdy2uDJFH|LYZQGTXRO:43l87;/6MI>\"@A?\\9[)_]5=.(S\'~\u76fa\u673c-"

    return-object v0
.end method

.method public static g()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 316
    sget-object v0, Lcom/mob/commons/x;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method

.method public static h()Z
    .locals 2

    .line 328
    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-static {}, Lcom/mob/commons/x;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 5

    const-string v0, "001n"

    const-string v1, "s"

    .line 335
    sget-object v2, Lcom/mob/commons/x;->f:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 340
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 343
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 346
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "utf-8"

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->CRC32([B)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/x;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 359
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 362
    :cond_1
    :goto_1
    sget-object v0, Lcom/mob/commons/x;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 27
    sget-object v0, Lcom/mob/commons/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static k()V
    .locals 5

    .line 181
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9426

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 188
    sput-boolean v1, Lcom/mob/commons/q;->a:Z

    .line 190
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 193
    :try_start_2
    sput-boolean v0, Lcom/mob/commons/q;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.method private static l()V
    .locals 2

    .line 199
    invoke-static {}, Lcom/mob/commons/l;->a()Lcom/mob/commons/l;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/x$3;

    invoke-direct {v1}, Lcom/mob/commons/x$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/commons/l;->a(Lcom/mob/commons/k;)V

    return-void
.end method
