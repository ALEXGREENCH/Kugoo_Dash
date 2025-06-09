.class Lcom/mob/mcl/c/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->a(ILcom/mob/mcl/BusinessMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessMessageListener;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mob/mcl/c/h$1;->e:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$1;->a:Lcom/mob/mcl/BusinessMessageListener;

    iput p3, p0, Lcom/mob/mcl/c/h$1;->b:I

    iput-object p4, p0, Lcom/mob/mcl/c/h$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/mcl/c/h$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 199
    iget-object p1, p0, Lcom/mob/mcl/c/h$1;->a:Lcom/mob/mcl/BusinessMessageListener;

    if-eqz p1, :cond_0

    .line 200
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TP tpHelper addBMListener: callback to messageReceived. bisType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mob/mcl/c/h$1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", workId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/h$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/h$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/mob/mcl/c/h$1;->a:Lcom/mob/mcl/BusinessMessageListener;

    iget v0, p0, Lcom/mob/mcl/c/h$1;->b:I

    iget-object v1, p0, Lcom/mob/mcl/c/h$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/mcl/c/h$1;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/mob/mcl/BusinessMessageListener;->messageReceived(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
