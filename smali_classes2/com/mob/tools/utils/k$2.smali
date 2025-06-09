.class Lcom/mob/tools/utils/k$2;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/k;->a(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/k;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/k;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mob/tools/utils/k$2;->a:Lcom/mob/tools/utils/k;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/mob/commons/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMwfoForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/utils/k$2$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/k$2$1;-><init>(Lcom/mob/tools/utils/k$2;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    :cond_0
    return-void
.end method
