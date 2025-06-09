.class Lcom/mob/tools/network/NetCommunicator$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetCommunicator$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/mob/tools/network/NetCommunicator$1;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetCommunicator$1;Ljava/lang/Throwable;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator$1$2;->b:Lcom/mob/tools/network/NetCommunicator$1;

    iput-object p2, p0, Lcom/mob/tools/network/NetCommunicator$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/mob/tools/network/NetCommunicator$1$2;->b:Lcom/mob/tools/network/NetCommunicator$1;

    iget-object p1, p1, Lcom/mob/tools/network/NetCommunicator$1;->f:Lcom/mob/tools/network/NetCommunicator$Callback;

    iget-object v0, p0, Lcom/mob/tools/network/NetCommunicator$1$2;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lcom/mob/tools/network/NetCommunicator$Callback;->onResultError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
