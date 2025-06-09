.class Lcom/mob/commons/x$4;
.super Lcom/mob/tools/utils/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/x;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 227
    iput-boolean p2, p0, Lcom/mob/commons/x$4;->a:Z

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 230
    invoke-static {}, Lcom/mob/commons/x;->e()I

    move-result v0

    .line 232
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/ab;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mob/commons/x$4;->a:Z

    invoke-virtual {v1, v2, v3}, Lcom/mob/commons/ab;->a(Ljava/lang/String;I)V

    .line 234
    iget-boolean v1, p0, Lcom/mob/commons/x$4;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 236
    invoke-static {}, Lcom/mob/commons/x;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v1

    .line 238
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v1, "main"

    goto :goto_0

    :cond_0
    const-string v1, "sub"

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 242
    invoke-static {v0}, Lcom/mob/commons/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 244
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDetailNetworkTypeForStatic()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/x$4$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/x$4$1;-><init>(Lcom/mob/commons/x$4;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    :cond_1
    return-void
.end method
