.class Lcom/mob/tools/network/NetCommunicator$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetCommunicator;->request(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/mob/tools/network/NetCommunicator$Callback;

.field final synthetic g:Lcom/mob/tools/network/NetCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetCommunicator;ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator$1;->g:Lcom/mob/tools/network/NetCommunicator;

    iput-boolean p2, p0, Lcom/mob/tools/network/NetCommunicator$1;->a:Z

    iput-object p3, p0, Lcom/mob/tools/network/NetCommunicator$1;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/mob/tools/network/NetCommunicator$1;->c:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/mob/tools/network/NetCommunicator$1;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/mob/tools/network/NetCommunicator$1;->e:Z

    iput-object p7, p0, Lcom/mob/tools/network/NetCommunicator$1;->f:Lcom/mob/tools/network/NetCommunicator$Callback;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, 0x0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/network/NetCommunicator$1;->g:Lcom/mob/tools/network/NetCommunicator;

    iget-boolean v2, p0, Lcom/mob/tools/network/NetCommunicator$1;->a:Z

    iget-object v3, p0, Lcom/mob/tools/network/NetCommunicator$1;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mob/tools/network/NetCommunicator$1;->c:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mob/tools/network/NetCommunicator$1;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/mob/tools/network/NetCommunicator$1;->e:Z

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/mob/tools/network/NetCommunicator$1;->f:Lcom/mob/tools/network/NetCommunicator$Callback;

    if-eqz v2, :cond_0

    .line 101
    new-instance v2, Lcom/mob/tools/network/NetCommunicator$1$1;

    invoke-direct {v2, p0, v1}, Lcom/mob/tools/network/NetCommunicator$1$1;-><init>(Lcom/mob/tools/network/NetCommunicator$1;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 109
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 110
    iget-object v2, p0, Lcom/mob/tools/network/NetCommunicator$1;->f:Lcom/mob/tools/network/NetCommunicator$Callback;

    if-eqz v2, :cond_0

    .line 111
    new-instance v2, Lcom/mob/tools/network/NetCommunicator$1$2;

    invoke-direct {v2, p0, v1}, Lcom/mob/tools/network/NetCommunicator$1$2;-><init>(Lcom/mob/tools/network/NetCommunicator$1;Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_0
    :goto_0
    return-void
.end method
