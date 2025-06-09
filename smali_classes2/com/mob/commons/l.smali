.class public Lcom/mob/commons/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/commons/l;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/commons/k;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private volatile e:J

.field private volatile f:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/l;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 27
    iput-wide v1, p0, Lcom/mob/commons/l;->e:J

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/mob/commons/l;->f:J

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mob/commons/l;->f:J

    const-string v1, "M-"

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "004+iehljmjh"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    new-instance v1, Lcom/mob/commons/l$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/l$1;-><init>(Lcom/mob/commons/l;)V

    invoke-static {v0, v1}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/l;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/l;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/mob/commons/l;->e:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/mob/commons/l;
    .locals 3

    const-class v0, Lcom/mob/commons/l;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/mob/commons/l;->a:Lcom/mob/commons/l;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/mob/commons/l;

    invoke-direct {v1}, Lcom/mob/commons/l;-><init>()V

    sput-object v1, Lcom/mob/commons/l;->a:Lcom/mob/commons/l;

    .line 33
    iget-object v1, v1, Lcom/mob/commons/l;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/mob/commons/l;->a:Lcom/mob/commons/l;

    iget-object v1, v1, Lcom/mob/commons/l;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    :cond_0
    sget-object v1, Lcom/mob/commons/l;->a:Lcom/mob/commons/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/mob/commons/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x65

    .line 210
    invoke-static {p0, v0}, Lcom/mob/commons/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 131
    invoke-direct {p0, p3, p3, p1, p2}, Lcom/mob/commons/l;->a(ZZJ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/l;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mob/commons/l;->d()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/l;JZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/commons/l;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/l;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/mob/commons/l;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/mob/commons/l;->a(ZZJ)V

    :cond_0
    return-void
.end method

.method private a(ZZJ)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/mob/commons/l;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/l;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/commons/k;

    .line 138
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mob/commons/k;->a(ZZJ)V

    goto :goto_0

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/mob/commons/l;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/mob/commons/l;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/mob/commons/l;)Ljava/util/HashSet;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mob/commons/l;->b:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/commons/l;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/mob/commons/l;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/mob/commons/l;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mob/commons/l;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/FBManager$2;

    invoke-direct {v1, p0}, Lcom/mob/commons/FBManager$2;-><init>(Lcom/mob/commons/l;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method static synthetic e(Lcom/mob/commons/l;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mob/commons/k;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/l;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/l;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    monitor-exit v0

    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/mob/commons/l;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 54
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 55
    iput v2, v1, Landroid/os/Message;->what:I

    .line 56
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/mob/commons/l;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 4

    .line 77
    iget-wide v0, p0, Lcom/mob/commons/l;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/mob/commons/l;->f:J

    return-wide v0
.end method
