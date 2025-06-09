.class Lcom/mob/mgs/impl/g$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/g$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 163
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    const-string v0, "Pd succ. Callback now"

    invoke-virtual {p1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object p1, p1, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getAInfoForPkg(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/mob/mgs/impl/g$1$3$1;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/g$1$3$1;-><init>(Lcom/mob/mgs/impl/g$1$3;)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 189
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 190
    invoke-static {}, Lcom/mob/mgs/impl/g;->c()Lcom/mob/mgs/OnAppActiveListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Lcom/mob/mgs/impl/g;->c()Lcom/mob/mgs/OnAppActiveListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/mob/mgs/OnAppActiveListener;->onAppActive(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
