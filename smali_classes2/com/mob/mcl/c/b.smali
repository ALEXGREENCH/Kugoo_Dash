.class public Lcom/mob/mcl/c/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mcl/c/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/mob/mcl/c/b;->c:I

    .line 50
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->b:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->d()Landroid/content/BroadcastReceiver;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mob/commons/v;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()Lcom/mob/mcl/c/b;
    .locals 2

    .line 39
    sget-object v0, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/mob/mcl/c/b;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/mob/mcl/c/b;

    invoke-direct {v1}, Lcom/mob/mcl/c/b;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TP HB onNetworkChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", last: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mob/mcl/c/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/mob/mcl/c/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
    iput p1, p0, Lcom/mob/mcl/c/b;->c:I

    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/mob/mcl/c/b;->c:I

    if-eqz p1, :cond_2

    .line 105
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "TP HB tcp status: true"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_1
    new-instance p1, Lcom/mob/mcl/c/b$2;

    invoke-direct {p1, p0}, Lcom/mob/mcl/c/b$2;-><init>(Lcom/mob/mcl/c/b;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/b;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method private a(Lcom/mob/tools/utils/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->f()V

    .line 185
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    new-instance v1, Lcom/mob/mcl/c/b$4;

    invoke-direct {v1, p0, p1}, Lcom/mob/mcl/c/b$4;-><init>(Lcom/mob/mcl/c/b;Lcom/mob/tools/utils/e;)V

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/h;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method private d()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 137
    new-instance v0, Lcom/mob/mcl/c/b$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/b$3;-><init>(Lcom/mob/mcl/c/b;)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/b;->c()Z

    .line 59
    iget-object v0, p0, Lcom/mob/mcl/c/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/mob/mcl/c/b$1;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/b$1;-><init>(Lcom/mob/mcl/c/b;)V

    const-wide/16 v2, 0x0

    .line 77
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v4

    iget v4, v4, Lcom/mob/mcl/c/h;->e:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->e:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "TP HB timer error"

    invoke-virtual {v1, v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 4

    const-string v0, "TP HB cancel: "

    const/4 v1, 0x0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/mob/mcl/c/b;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 87
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    .line 88
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 91
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method
