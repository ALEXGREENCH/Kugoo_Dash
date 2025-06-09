.class public Lcom/mob/tools/utils/MobPersistence;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/MobPersistence$c;,
        Lcom/mob/tools/utils/MobPersistence$g;,
        Lcom/mob/tools/utils/MobPersistence$h;,
        Lcom/mob/tools/utils/MobPersistence$f;,
        Lcom/mob/tools/utils/MobPersistence$SerializableParcel;,
        Lcom/mob/tools/utils/MobPersistence$b;,
        Lcom/mob/tools/utils/MobPersistence$KVEntry;,
        Lcom/mob/tools/utils/MobPersistence$a;,
        Lcom/mob/tools/utils/MobPersistence$NoValidDataException;,
        Lcom/mob/tools/utils/MobPersistence$e;,
        Lcom/mob/tools/utils/MobPersistence$j;,
        Lcom/mob/tools/utils/MobPersistence$i;,
        Lcom/mob/tools/utils/MobPersistence$d;
    }
.end annotation


# static fields
.field private static final h:I


# instance fields
.field private final a:Lcom/mob/tools/utils/MobPersistence$i;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/MobPersistence$j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final g:Lcom/mob/tools/utils/MobPersistence$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/mob/tools/utils/MobPersistence;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 64
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$f;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/mob/tools/utils/MobPersistence$f;-><init>(Ljava/lang/String;Lcom/mob/tools/utils/MobPersistence$1;)V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->g:Lcom/mob/tools/utils/MobPersistence$f;

    .line 65
    new-instance p3, Lcom/mob/tools/utils/MobPersistence$i;

    invoke-direct {p3, p1, p2, v0}, Lcom/mob/tools/utils/MobPersistence$i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/MobPersistence$f;)V

    iput-object p3, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    if-eqz p2, :cond_0

    const-string p1, "."

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x1

    if-le p1, p3, :cond_0

    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 72
    :cond_0
    new-instance p1, Lcom/mob/tools/utils/MobPersistence$1;

    invoke-direct {p1, p0, p2}, Lcom/mob/tools/utils/MobPersistence$1;-><init>(Lcom/mob/tools/utils/MobPersistence;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    new-instance p2, Lcom/mob/tools/utils/MobPersistence$d;

    invoke-direct {p2, p0, v1}, Lcom/mob/tools/utils/MobPersistence$d;-><init>(Lcom/mob/tools/utils/MobPersistence;Lcom/mob/tools/utils/MobPersistence$1;)V

    const-wide/16 v0, 0xbb8

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v0, Lcom/mob/tools/utils/MobPersistence;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "0077idelgghmQg)ekgj"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/mob/tools/utils/MobPersistence;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1629
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[MPF]["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/mob/tools/utils/MobPersistence;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1633
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1634
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1611
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[MPF]["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/mob/tools/utils/MobPersistence;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1615
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/mob/tools/utils/MobPersistence;

    monitor-enter v0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/MobPersistence;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/mob/tools/utils/MobPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1606
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1620
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1624
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/utils/MobPersistence$e<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const-string v0, "Get done, exp-m: "

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$e;->a()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/utils/MobPersistence$j;

    .line 260
    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$j;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$j;->b()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    .line 263
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;

    invoke-direct {v0}, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 271
    :try_start_2
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 278
    :goto_1
    :try_start_3
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    .line 279
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-virtual {v1, v0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p1

    .line 281
    :catchall_1
    new-instance p1, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;

    invoke-direct {p1}, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 269
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 273
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 274
    throw p1

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Key: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deserializer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mob/tools/utils/MobPersistence$j;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$j;->a()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$j;->d()J

    move-result-wide v1

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 168
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mob/tools/utils/MobPersistence$j;->a(Lcom/mob/tools/utils/MobPersistence$j;[B)V

    .line 169
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 175
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 176
    throw p1

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", expAt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataEntry is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cln"

    invoke-static {v1, v0}, Lcom/mob/tools/utils/MobPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 225
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence$i;->d()Z

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    .line 227
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 228
    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    const-string v4, "f"

    .line 191
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 194
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 196
    :try_start_0
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aput-boolean v1, v2, v3

    const-string v5, "m"

    .line 199
    aput-object v5, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 202
    :try_start_1
    iget-object v6, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v6}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 206
    :goto_1
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    new-instance v6, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-direct {v6, v0}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    invoke-virtual {v5, v6, v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$g;Z)Z

    move-result v0

    aput-boolean v0, v2, v3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmv: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", succ is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-boolean v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-boolean p1, v2, v3

    return p1

    :catchall_1
    move-exception p1

    .line 204
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 205
    throw p1

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/utils/MobPersistence$j;

    .line 298
    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$j;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$j;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 304
    :try_start_1
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    .line 309
    :goto_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 311
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-virtual {v3}, Lcom/mob/tools/utils/MobPersistence$i;->e()Ljava/util/List;

    move-result-object v3

    .line 312
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 313
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 314
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence;->g:Lcom/mob/tools/utils/MobPersistence$f;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/mob/tools/utils/MobPersistence$f;->a(Lcom/mob/tools/utils/MobPersistence$f;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 316
    instance-of v5, v4, Lcom/mob/tools/utils/MobPersistence$KVEntry;

    if-eqz v5, :cond_2

    .line 317
    check-cast v4, Lcom/mob/tools/utils/MobPersistence$KVEntry;

    .line 318
    new-instance v5, Lcom/mob/tools/utils/MobPersistence$a;

    invoke-virtual {v4}, Lcom/mob/tools/utils/MobPersistence$KVEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mob/tools/utils/MobPersistence$KVEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v5, v7, v4}, Lcom/mob/tools/utils/MobPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 320
    :cond_2
    check-cast v4, Ljava/util/HashMap;

    .line 321
    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence$a;->a(Ljava/util/HashMap;)Lcom/mob/tools/utils/MobPersistence$a;

    move-result-object v5

    .line 324
    :goto_4
    invoke-virtual {v5}, Lcom/mob/tools/utils/MobPersistence$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 329
    :try_start_2
    move-object v7, v4

    check-cast v7, Lcom/mob/tools/utils/MobPersistence$b;

    .line 330
    invoke-virtual {v7, v6}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    :cond_3
    move-object v7, v6

    :goto_5
    if-eqz v4, :cond_5

    if-nez v7, :cond_5

    .line 338
    :try_start_3
    move-object v8, v4

    check-cast v8, [Lcom/mob/tools/utils/MobPersistence$b;

    if-eqz v8, :cond_5

    .line 339
    array-length v9, v8

    if-lez v9, :cond_5

    const/4 v9, 0x0

    .line 340
    aget-object v10, v8, v9

    invoke-virtual {v10}, Lcom/mob/tools/utils/MobPersistence$b;->a()Ljava/lang/Class;

    move-result-object v10

    .line 341
    array-length v11, v8

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    .line 342
    :goto_6
    array-length v11, v10

    if-ge v9, v11, :cond_4

    .line 343
    aget-object v11, v8, v9

    invoke-virtual {v11, v6}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v11

    aput-object v11, v10, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    move-object v7, v10

    :catchall_2
    :cond_5
    if-eqz v4, :cond_9

    if-nez v7, :cond_9

    .line 354
    :try_start_4
    move-object v8, v4

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_9

    .line 355
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 357
    instance-of v9, v8, Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 358
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7

    .line 359
    :cond_6
    instance-of v9, v8, Ljava/util/LinkedList;

    if-eqz v9, :cond_7

    .line 360
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    goto :goto_7

    .line 362
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 364
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mob/tools/utils/MobPersistence$b;

    .line 365
    invoke-virtual {v10, v6}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    :cond_8
    move-object v7, v9

    :catchall_3
    :cond_9
    if-eqz v4, :cond_e

    if-nez v7, :cond_e

    .line 376
    :try_start_5
    move-object v8, v4

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_e

    .line 377
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 379
    instance-of v9, v8, Ljava/util/HashMap;

    if-eqz v9, :cond_a

    .line 380
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto :goto_9

    .line 381
    :cond_a
    instance-of v9, v8, Ljava/util/Hashtable;

    if-eqz v9, :cond_b

    .line 382
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    goto :goto_9

    .line 383
    :cond_b
    instance-of v9, v8, Ljava/util/TreeMap;

    if-eqz v9, :cond_c

    .line 384
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    goto :goto_9

    .line 386
    :cond_c
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 388
    :goto_9
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mob/tools/utils/MobPersistence$b;

    invoke-virtual {v10, v6}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_a

    :cond_d
    move-object v7, v9

    :catchall_4
    :cond_e
    if-nez v7, :cond_f

    goto :goto_b

    :cond_f
    move-object v4, v7

    .line 401
    :goto_b
    invoke-static {v5}, Lcom/mob/tools/utils/MobPersistence$a;->a(Lcom/mob/tools/utils/MobPersistence$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 404
    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 405
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GetA done: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_5
    move-exception v0

    .line 306
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 307
    throw v0
.end method
