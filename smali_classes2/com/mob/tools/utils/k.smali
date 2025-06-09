.class public Lcom/mob/tools/utils/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/k$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/mob/tools/utils/k;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/mob/tools/utils/k;->b:Landroid/content/BroadcastReceiver;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/mob/tools/utils/k;->d:J

    .line 33
    invoke-static {}, Lcom/mob/commons/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mob/commons/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Lcom/mob/tools/utils/k$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/k$1;-><init>(Lcom/mob/tools/utils/k;)V

    iput-object v0, p0, Lcom/mob/tools/utils/k;->b:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "029cd>cbcicjchcbckGdehLckefchdechckdkebecebfhcgdcejecdfhcfh"

    .line 40
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/mob/tools/utils/k;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v0}, Lcom/mob/commons/v;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public static a()Lcom/mob/tools/utils/k;
    .locals 2

    .line 46
    sget-object v0, Lcom/mob/tools/utils/k;->a:Lcom/mob/tools/utils/k;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/mob/tools/utils/k;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/k;->a:Lcom/mob/tools/utils/k;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/mob/tools/utils/k;

    invoke-direct {v1}, Lcom/mob/tools/utils/k;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/k;->a:Lcom/mob/tools/utils/k;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/k;->a:Lcom/mob/tools/utils/k;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/utils/k;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mob/tools/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "029cd[cbcicjchcbckEdehMckefchdechckdkebecebfhcgdcejecdfhcfh"

    .line 74
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "011dehPefcjcidgddBdJdecj"

    .line 75
    invoke-static {p1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 79
    iget-wide v0, p0, Lcom/mob/tools/utils/k;->d:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 80
    iput-wide p1, p0, Lcom/mob/tools/utils/k;->d:J

    .line 81
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object p1

    new-instance p2, Lcom/mob/tools/utils/k$2;

    invoke-direct {p2, p0}, Lcom/mob/tools/utils/k$2;-><init>(Lcom/mob/tools/utils/k;)V

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, v0, v1, p2}, Lcom/mob/commons/a/l;->d(JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 120
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mob/tools/utils/k$a;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mob/tools/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mob/tools/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
