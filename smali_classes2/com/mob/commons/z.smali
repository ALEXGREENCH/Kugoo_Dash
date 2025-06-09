.class public Lcom/mob/commons/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/z$a;,
        Lcom/mob/commons/z$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static final f:Ljava/util/concurrent/ExecutorService;

.field public static final g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "M-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "002=glil"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/z;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "003Jhmgfil"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/z;->b:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v1, 0x5

    const/4 v10, 0x2

    .line 36
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/mob/commons/z$b;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/mob/commons/z$b;-><init>(I)V

    new-instance v9, Lcom/mob/commons/z$a;

    invoke-direct {v9}, Lcom/mob/commons/z$a;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x78

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/mob/commons/z$b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/mob/commons/z$b;-><init>(I)V

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/mob/commons/z;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 47
    new-instance v0, Lcom/mob/commons/z$b;

    invoke-direct {v0, v10}, Lcom/mob/commons/z$b;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/z;->e:Ljava/util/concurrent/ExecutorService;

    .line 48
    new-instance v0, Lcom/mob/commons/z$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/mob/commons/z$b;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/z;->f:Ljava/util/concurrent/ExecutorService;

    .line 49
    new-instance v0, Lcom/mob/commons/z$b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/mob/commons/z$b;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/z;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
