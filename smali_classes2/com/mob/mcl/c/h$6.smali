.class Lcom/mob/mcl/c/h$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/BusinessCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessCallBack;

.field final synthetic b:Z

.field final synthetic c:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessCallBack;Z)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/mob/mcl/c/h$6;->c:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$6;->a:Lcom/mob/mcl/BusinessCallBack;

    iput-boolean p3, p0, Lcom/mob/mcl/c/h$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 407
    iget-object p1, p0, Lcom/mob/mcl/c/h$6;->a:Lcom/mob/mcl/BusinessCallBack;

    if-eqz p1, :cond_0

    .line 408
    iget-boolean v0, p0, Lcom/mob/mcl/c/h$6;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
