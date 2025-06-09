.class public Lcom/mob/tools/utils/UIHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/UIHandler$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILandroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 1

    .line 47
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 48
    iput p0, v0, Landroid/os/Message;->what:I

    .line 49
    invoke-static {v0, p1}, Lcom/mob/tools/utils/UIHandler;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 2

    .line 41
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 42
    new-instance v1, Lcom/mob/tools/utils/UIHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/utils/UIHandler$a;-><init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/mob/tools/utils/UIHandler;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/UIHandler;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 18
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/mob/tools/utils/UIHandler;->b(Landroid/os/Message;)V

    return-void
.end method

.method private static b()V
    .locals 3

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/mob/tools/utils/UIHandler$1;

    invoke-direct {v2}, Lcom/mob/tools/utils/UIHandler$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/mob/tools/utils/UIHandler;->a:Landroid/os/Handler;

    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .locals 1

    .line 32
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/mob/tools/utils/UIHandler$a;

    .line 33
    iget-object v0, p0, Lcom/mob/tools/utils/UIHandler$a;->a:Landroid/os/Message;

    .line 34
    iget-object p0, p0, Lcom/mob/tools/utils/UIHandler$a;->b:Landroid/os/Handler$Callback;

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    .locals 1

    .line 53
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->a()V

    .line 54
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->a:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/utils/UIHandler;->a(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->a()V

    .line 59
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->a:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/utils/UIHandler;->a(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->a()V

    .line 64
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->a:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/utils/UIHandler;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->a()V

    .line 69
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->a:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/utils/UIHandler;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
