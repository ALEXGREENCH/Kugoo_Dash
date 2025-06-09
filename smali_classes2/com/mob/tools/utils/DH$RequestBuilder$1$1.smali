.class Lcom/mob/tools/utils/DH$RequestBuilder$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DH$RequestBuilder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/DH$DHResponse;

.field final synthetic b:Lcom/mob/tools/utils/DH$RequestBuilder$1;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DH$RequestBuilder$1;Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1$1;->b:Lcom/mob/tools/utils/DH$RequestBuilder$1;

    iput-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1$1;->a:Lcom/mob/tools/utils/DH$DHResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 p1, 0x0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1$1;->b:Lcom/mob/tools/utils/DH$RequestBuilder$1;

    iget-object v0, v0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->c:Lcom/mob/tools/utils/DH$DHResponder;

    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1$1;->a:Lcom/mob/tools/utils/DH$DHResponse;

    invoke-interface {v0, v1}, Lcom/mob/tools/utils/DH$DHResponder;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "Error from caller"

    new-array v3, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return p1
.end method
