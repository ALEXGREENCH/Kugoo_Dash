.class public Lcom/mob/commons/aa;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "008=elfkfdgjgielflic"

    .line 28
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "006Aelhcelelflic"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "007Shcghfjfeeeegic"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "007Dhcghfjglekelfk"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "009 elgiedgkgigjeegcil"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "008Qhcghfjfdflelflic"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "008Uhcghfjidekfdgjfl"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sput-object v0, Lcom/mob/commons/aa;->a:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/aa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/aa;->d:Ljava/util/HashMap;

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/MobProduct;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/aa;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 130
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMIUIVersion()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDetailNetworkTypeForStatic()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getCarrier()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    .line 135
    invoke-static {}, Lcom/mob/commons/x;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 136
    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDeviceKey()Lcom/mob/tools/utils/DH$RequestBuilder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 138
    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDeviceKeyFromCache(Z)Lcom/mob/tools/utils/DH$RequestBuilder;

    .line 140
    :goto_0
    new-instance v3, Lcom/mob/commons/aa$2;

    invoke-direct {v3, p1, p0, v1}, Lcom/mob/commons/aa$2;-><init>(ILjava/util/ArrayList;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    const/4 p0, 0x0

    .line 229
    aget-object p0, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/mob/commons/aa;->g()V

    .line 38
    sget-object v0, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/mob/commons/aa$1;

    invoke-direct {v1}, Lcom/mob/commons/aa$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/mob/commons/MobProduct;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/mob/commons/aa;->d:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/mob/commons/aa;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/mob/commons/x;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mob/commons/aa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/mob/commons/aa;->h()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 76
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/aa;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/mob/commons/aa;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/commons/aa;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/aa;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/mob/commons/aa;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mob/commons/aa;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/aa;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/mob/commons/aa;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mob/commons/aa;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/aa;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {}, Lcom/mob/commons/aa;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/mob/commons/aa;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static g()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/mob/commons/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/mob/commons/aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Lcom/mob/commons/MOBLINK;

    invoke-direct {v0}, Lcom/mob/commons/MOBLINK;-><init>()V

    .line 54
    instance-of v1, v0, Lcom/mob/commons/MobProduct;

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static h()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    sget-object v1, Lcom/mob/commons/t;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 87
    :try_start_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 88
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 90
    :cond_1
    check-cast v2, Ljava/lang/Class;

    .line 92
    :goto_1
    const-class v3, Lcom/mob/commons/MobProduct;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v3, Lcom/mob/commons/MobProduct;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/commons/MobProduct;

    .line 94
    invoke-interface {v2}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v3

    .line 95
    sget-object v4, Lcom/mob/commons/aa;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 96
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 97
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    return-object v0
.end method
