.class Lcom/mob/mgs/impl/g$1$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1$3;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/g$1$3;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1$3;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$3$1;->a:Lcom/mob/mgs/impl/g$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    const-string v0, "Pd succ. Callback[mnf] "

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 168
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getAInfoForPkg([I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "guard_listener"

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/mgs/OnAppActiveListener;

    iget-object v2, p0, Lcom/mob/mgs/impl/g$1$3$1;->a:Lcom/mob/mgs/impl/g$1$3;

    iget-object v2, v2, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v2, v2, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/mob/mgs/OnAppActiveListener;->onAppActive(Landroid/content/Context;I)V

    .line 176
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 178
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 182
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mob/mgs/impl/g;->c()Lcom/mob/mgs/OnAppActiveListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 183
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    const-string v0, "Pd succ. Callback[setter]"

    invoke-virtual {p1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/mob/mgs/impl/g;->c()Lcom/mob/mgs/OnAppActiveListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mgs/impl/g$1$3$1;->a:Lcom/mob/mgs/impl/g$1$3;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/mob/mgs/OnAppActiveListener;->onAppActive(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
