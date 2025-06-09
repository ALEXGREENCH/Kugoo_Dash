.class Lcom/mob/mgs/impl/c$9$1;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c$9;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/c$9;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c$9;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/mob/mgs/impl/c$9$1;->a:Lcom/mob/mgs/impl/c$9;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    const-string v0, "[GD] registerServerSocket: "

    const-string v1, "[GD] checkAndInitGuardParams:"

    .line 188
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lcom/mob/mgs/impl/c$9$1;->a:Lcom/mob/mgs/impl/c$9;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    invoke-virtual {p1}, Lcom/mob/mgs/impl/c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 195
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    const-string v2, "[GD] registerServerSocket"

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mgs/impl/a;->a(Ljava/util/concurrent/BlockingQueue;)V

    .line 197
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 198
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/mob/mgs/impl/c$9$1;->a:Lcom/mob/mgs/impl/c$9;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    iget-object v0, p0, Lcom/mob/mgs/impl/c$9$1;->a:Lcom/mob/mgs/impl/c$9;

    iget-object v0, v0, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    invoke-static {v0}, Lcom/mob/mgs/impl/c;->b(Lcom/mob/mgs/impl/c;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;ZLjava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/mob/mgs/impl/c$9$1;->a:Lcom/mob/mgs/impl/c$9;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    invoke-static {p1}, Lcom/mob/mgs/impl/c;->b(Lcom/mob/mgs/impl/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1f4

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 205
    iget-object p1, p0, Lcom/mob/mgs/impl/c$9$1;->a:Lcom/mob/mgs/impl/c$9;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    invoke-static {p1}, Lcom/mob/mgs/impl/c;->c(Lcom/mob/mgs/impl/c;)V

    :cond_0
    return-void

    .line 210
    :cond_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    const-string v0, "[Guard] registerClientSocket"

    invoke-virtual {p1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mgs/impl/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 215
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$9$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
