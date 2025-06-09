.class public Lcn/smssdk/ReflectableEnventHandler;
.super Lcn/smssdk/EventHandler;
.source "ReflectableEnventHandler.java"


# instance fields
.field private a:I

.field private b:Landroid/os/Handler$Callback;

.field private c:I

.field private d:Landroid/os/Handler$Callback;

.field private e:I

.field private f:Landroid/os/Handler$Callback;

.field private g:I

.field private h:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->f:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/smssdk/ReflectableEnventHandler;->f:Landroid/os/Handler$Callback;

    invoke-interface {p1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public beforeEvent(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->d:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->c:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/smssdk/ReflectableEnventHandler;->d:Landroid/os/Handler$Callback;

    invoke-interface {p1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onRegister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->b:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object v1, p0, Lcn/smssdk/ReflectableEnventHandler;->b:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onUnregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->h:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->g:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object v1, p0, Lcn/smssdk/ReflectableEnventHandler;->h:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setAfterEventCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->e:I

    .line 2
    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->f:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setBeforeEventCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->c:I

    .line 2
    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->d:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setOnRegisterCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->a:I

    .line 2
    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->b:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setOnUnregisterCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->g:I

    .line 2
    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->h:Landroid/os/Handler$Callback;

    return-void
.end method
