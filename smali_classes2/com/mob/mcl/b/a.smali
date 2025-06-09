.class public Lcom/mob/mcl/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/mob/tools/network/NetworkHelper;

.field private static d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    sput-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic a(I)Ljava/lang/Runnable;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/mob/mcl/b/a;->c(I)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 524
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->g()V

    .line 525
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-object v0, v0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 474
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "url"

    .line 475
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 478
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "headers"

    .line 480
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p0, "body"

    .line 482
    invoke-virtual {p3}, Lcom/mob/tools/network/StringPart;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_1
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 489
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string p1, "mcl apc"

    invoke-virtual {p0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object v0

    .line 494
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 495
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "mcl htp"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x26

    .line 516
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "mcl htp"

    if-nez p0, :cond_1

    .line 325
    sget-object v1, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 335
    invoke-static {p2}, Lcom/mob/mcl/b/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 336
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object p2, v1

    .line 341
    :cond_3
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 342
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 343
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 346
    :cond_4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    iget v3, p4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v4, "GET"

    invoke-static {v4, p1, p3, v1}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3ec

    invoke-virtual {v2, v5, v3, v4}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 349
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string p1, "mcl tp"

    invoke-virtual {p0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 350
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_6

    .line 352
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 353
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0

    :cond_6
    if-eqz p0, :cond_7

    return-object v1

    .line 360
    :cond_7
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->e()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 361
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x5

    const/4 p2, 0x0

    .line 362
    invoke-static {p0, p2}, Lcom/mob/mcl/b/a;->b(II)V

    .line 364
    :cond_8
    invoke-static {p1, p3, p4}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 366
    :cond_9
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(II)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/mob/mcl/b/a;->b(II)V

    return-void
.end method

.method public static a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 1

    .line 586
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/mcl/c/h;->a(ILcom/mob/mcl/BusinessMessageListener;)V

    return-void
.end method

.method private static a(ILcom/mob/tools/utils/e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unavailable(global: "

    const-string v1, "global: "

    const-string v2, "init tp, main p: "

    const-string v3, "Exception: "

    .line 151
    sget-object v4, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    const/4 v5, 0x0

    .line 153
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v6}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 159
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v4

    .line 160
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/16 v2, 0x15

    if-eqz v4, :cond_5

    .line 163
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/mcl/c/h;->f()V

    .line 164
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mob/mcl/c/h;->g:Z

    if-nez v4, :cond_3

    .line 165
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->g:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-static {v2}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1, v6}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    :goto_0
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 173
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/h;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    new-instance v1, Lcom/mob/mcl/b/a$5;

    invoke-direct {v1, p1}, Lcom/mob/mcl/b/a$5;-><init>(Lcom/mob/tools/utils/e;)V

    invoke-virtual {v0, p0, v1}, Lcom/mob/mcl/c/h;->a(ILcom/mob/tools/utils/e;)V

    goto :goto_0

    .line 213
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->g:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", connect: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->h:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-static {v2}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V

    .line 215
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v0, "tp reg avail false"

    invoke-virtual {p0, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p0, "sub process"

    .line 219
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-static {v2}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V

    .line 222
    :goto_1
    new-instance p0, Lcom/mob/mcl/b/a$6;

    invoke-direct {p0, p1}, Lcom/mob/mcl/b/a$6;-><init>(Lcom/mob/tools/utils/e;)V

    invoke-static {p0}, Lcom/mob/mcl/b/a;->b(Lcom/mob/tools/utils/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 232
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V

    .line 234
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_6

    .line 236
    invoke-virtual {p1, v6}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :cond_6
    :goto_2
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception p0

    sget-object p1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl ini"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 70
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 79
    :goto_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/b/a$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/mob/mcl/b/a$a;-><init>(Lcom/mob/mcl/b/a$1;)V

    invoke-virtual {p1, p0, p2}, Lcom/mob/mcl/a/a;->a(Landroid/content/Context;Lcom/mob/apc/b$b;)V

    .line 82
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    const-string p1, "use_config"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Z)V

    .line 83
    invoke-static {p2, p2}, Lcom/mob/mcl/b/a;->b(II)V

    return-void
.end method

.method public static a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 1

    .line 582
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V

    return-void
.end method

.method public static a(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 1

    .line 529
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mgs/OnIdChangeListener;)V

    .line 530
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->g()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/mob/mcl/b/a;->b(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;JLcom/mob/tools/utils/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 539
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;J)V

    const/4 p0, 0x0

    .line 541
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/h;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 542
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/h;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 543
    new-instance p1, Lcom/mob/mcl/b/a$10;

    invoke-direct {p1, p3}, Lcom/mob/mcl/b/a$10;-><init>(Lcom/mob/tools/utils/e;)V

    const/16 p2, 0xbb8

    invoke-static {p2, p1}, Lcom/mob/mcl/b/a;->a(ILcom/mob/tools/utils/e;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/b/a$2;

    invoke-direct {p2, p3}, Lcom/mob/mcl/b/a$2;-><init>(Lcom/mob/tools/utils/e;)V

    invoke-virtual {p1, p2}, Lcom/mob/mcl/c/h;->b(Lcom/mob/tools/utils/e;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 570
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 574
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_2

    .line 576
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 501
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    const-string v1, "POST"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;Z)V

    .line 504
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    .line 507
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;[BILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "Content-Length"

    .line 466
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sign"

    .line 467
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_0
    sget-object v1, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mob/tools/network/NetworkHelper;->httpPostWithBytes(Ljava/lang/String;[BLjava/util/HashMap;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_1

    .line 373
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    sget-object v2, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    .line 381
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 383
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 386
    :cond_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget v1, p6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v2, "POST"

    invoke-static {v2, p1, p2, p3}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v0, v3, v1, v2}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 389
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-direct {p0, v0}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;)V

    .line 390
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    :cond_3
    if-nez p0, :cond_4

    .line 394
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    :cond_4
    if-eqz p0, :cond_5

    const/4 p0, 0x0

    .line 400
    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 401
    :cond_5
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 402
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 403
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->b(II)V

    .line 405
    :cond_6
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_0

    .line 407
    :cond_7
    sget-object v1, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    :goto_0
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;[BILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_1

    .line 417
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;[BILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    .line 425
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->e()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 426
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 430
    :cond_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget v2, p6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    new-instance v3, Lcom/mob/tools/network/StringPart;

    invoke-direct {v3}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 432
    invoke-static {p3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    const-string v4, "POST"

    .line 431
    invoke-static {v4, p1, p2, v3}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3ec

    invoke-virtual {v0, v4, v2, v3}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 434
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-direct {p0, v0}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;)V

    .line 435
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    :cond_3
    if-nez p0, :cond_4

    .line 439
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;[BILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    :cond_4
    if-eqz p0, :cond_5

    const/4 p0, 0x0

    .line 445
    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 446
    :cond_5
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->e()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 447
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 448
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->b(II)V

    .line 450
    :cond_6
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v2

    const-string v3, "POST"

    new-instance p0, Lcom/mob/tools/network/StringPart;

    invoke-direct {p0}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 451
    invoke-static {p3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v6

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    move-object v8, p6

    .line 450
    invoke-virtual/range {v2 .. v8}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 453
    new-instance p1, Lcom/mob/mcl/b/b;

    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;Z)V

    .line 454
    invoke-static {p1}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 456
    :cond_7
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;[BILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_0

    .line 459
    :cond_8
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;[BILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    :goto_0
    return-void
.end method

.method public static b()J
    .locals 2

    .line 534
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->g()V

    .line 535
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-wide v0, v0, Lcom/mob/mcl/c/h;->l:J

    return-wide v0
.end method

.method static synthetic b(I)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/mob/mcl/b/a;->d(I)V

    return-void
.end method

.method private static b(II)V
    .locals 3

    .line 87
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sched: count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 88
    new-instance p1, Lcom/mob/mcl/b/a$1;

    invoke-direct {p1, p0}, Lcom/mob/mcl/b/a$1;-><init>(I)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method private static b(Lcom/mob/tools/utils/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    new-instance v1, Lcom/mob/mcl/b/a$9;

    invoke-direct {v1, p0}, Lcom/mob/mcl/b/a$9;-><init>(Lcom/mob/tools/utils/e;)V

    invoke-virtual {v0, v1}, Lcom/mob/mcl/a/a;->a(Lcom/mob/tools/utils/e;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static c(I)Ljava/lang/Runnable;
    .locals 1

    .line 104
    new-instance v0, Lcom/mob/mcl/b/a$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/b/a$3;-><init>(I)V

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static d()V
    .locals 5

    const-string v0, "rgs tp, main p: "

    const/4 v1, 0x0

    .line 245
    :try_start_0
    sget-object v2, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 302
    :goto_0
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 250
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v2

    .line 251
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 253
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->g:Z

    if-nez v0, :cond_1

    .line 254
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    new-instance v2, Lcom/mob/mcl/b/a$7;

    invoke-direct {v2}, Lcom/mob/mcl/b/a$7;-><init>()V

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3, v2}, Lcom/mob/mcl/c/h;->a(ILcom/mob/tools/utils/e;)V

    goto :goto_1

    .line 272
    :cond_2
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/mcl/b/a$8;

    invoke-direct {v2}, Lcom/mob/mcl/b/a$8;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 300
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 302
    :cond_3
    :goto_1
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v0

    sget-object v2, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    throw v0
.end method

.method private static d(I)V
    .locals 4

    const/4 v0, 0x6

    if-ge p0, v0, :cond_1

    .line 118
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v0

    .line 119
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tp rgs, main p: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    new-instance v1, Lcom/mob/mcl/b/a$4;

    invoke-direct {v1, v0, p0}, Lcom/mob/mcl/b/a$4;-><init>(ZI)V

    const/16 p0, 0x1388

    invoke-static {p0, v1}, Lcom/mob/mcl/b/a;->a(ILcom/mob/tools/utils/e;)V

    :cond_1
    return-void
.end method
