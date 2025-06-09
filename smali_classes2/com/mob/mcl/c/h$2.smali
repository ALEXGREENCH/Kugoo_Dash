.class Lcom/mob/mcl/c/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->a(JLjava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessMessageListener;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/mob/mcl/c/h$2;->f:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$2;->a:Lcom/mob/mcl/BusinessMessageListener;

    iput-object p3, p0, Lcom/mob/mcl/c/h$2;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/mob/mcl/c/h$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/mcl/c/h$2;->d:Ljava/lang/String;

    iput p6, p0, Lcom/mob/mcl/c/h$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 891
    iget-object p1, p0, Lcom/mob/mcl/c/h$2;->a:Lcom/mob/mcl/BusinessMessageListener;

    if-eqz p1, :cond_1

    .line 892
    instance-of p1, p1, Lcom/mob/mcl/BusinessMessageCallback;

    const-string v0, ", msg: "

    const-string v1, ", workId: "

    if-eqz p1, :cond_0

    .line 893
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dealBusinessMsg]TP callback to messageReceived with st. bisType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mob/mcl/c/h$2;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mcl/c/h$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/h$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 895
    iget-object p1, p0, Lcom/mob/mcl/c/h$2;->a:Lcom/mob/mcl/BusinessMessageListener;

    check-cast p1, Lcom/mob/mcl/BusinessMessageCallback;

    iget v0, p0, Lcom/mob/mcl/c/h$2;->e:I

    iget-object v1, p0, Lcom/mob/mcl/c/h$2;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mob/mcl/c/h$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/mcl/c/h$2;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mob/mcl/BusinessMessageCallback;->messageReceived(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dealBusinessMsg]TP callback to messageReceived. bisType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mob/mcl/c/h$2;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mcl/c/h$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/h$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/mob/mcl/c/h$2;->a:Lcom/mob/mcl/BusinessMessageListener;

    iget-object v0, p0, Lcom/mob/mcl/c/h$2;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mob/mcl/c/h$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/mcl/c/h$2;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/mob/mcl/BusinessMessageListener;->messageReceived(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
