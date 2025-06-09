.class public Lcom/mob/MobACService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/mob/apc/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 10
    new-instance v0, Lcom/mob/apc/a/a;

    invoke-direct {v0, p0}, Lcom/mob/apc/a/a;-><init>(Lcom/mob/MobACService;)V

    iput-object v0, p0, Lcom/mob/MobACService;->a:Lcom/mob/apc/a/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mob/MobACService;->a:Lcom/mob/apc/a/a;

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/a;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    iget-object v0, p0, Lcom/mob/MobACService;->a:Lcom/mob/apc/a/a;

    invoke-virtual {v0}, Lcom/mob/apc/a/a;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mob/MobACService;->a:Lcom/mob/apc/a/a;

    invoke-virtual {v0}, Lcom/mob/apc/a/a;->b()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mob/MobACService;->a:Lcom/mob/apc/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/apc/a/a;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mob/MobACService;->a:Lcom/mob/apc/a/a;

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/a;->b(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
