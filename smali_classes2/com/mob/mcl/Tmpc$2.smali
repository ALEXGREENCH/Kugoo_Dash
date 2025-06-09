.class Lcom/mob/mcl/Tmpc$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/a;->a(Ljava/lang/String;Lcom/mob/apc/a;)Lcom/mob/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/apc/a;


# direct methods
.method constructor <init>(Lcom/mob/apc/a;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mob/mcl/Tmpc$2;->a:Lcom/mob/apc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    instance-of v0, p1, Lcom/mob/mcl/b/b;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    new-instance v1, Lcom/mob/tools/utils/HashonHelper;

    invoke-direct {v1}, Lcom/mob/tools/utils/HashonHelper;-><init>()V

    check-cast p1, Lcom/mob/mcl/b/b;

    invoke-virtual {p1}, Lcom/mob/mcl/b/b;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/mob/mcl/Tmpc$2;->a:Lcom/mob/apc/a;

    iput-object v0, p1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    :cond_0
    return-void
.end method
