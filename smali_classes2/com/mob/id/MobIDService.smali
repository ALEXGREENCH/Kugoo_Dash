.class public Lcom/mob/id/MobIDService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0}, Lcom/mob/mgs/impl/g;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/mob/id/MobIDService;->a(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/id/MobIDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "[MobGod] MobIDService onCreate"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/mob/id/MobIDService;->a(Landroid/content/Intent;)V

    .line 34
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
