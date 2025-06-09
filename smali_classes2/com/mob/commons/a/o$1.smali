.class Lcom/mob/commons/a/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/o;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/o;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/o;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mob/commons/a/o$1;->a:Lcom/mob/commons/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/mob/commons/a/o$1;->a:Lcom/mob/commons/a/o;

    invoke-virtual {v0}, Lcom/mob/commons/a/o;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/a/o$1;->a:Lcom/mob/commons/a/o;

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Lcom/mob/commons/a/o;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "wsct"

    const/16 v3, 0x12c

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 40
    iget-object v0, p0, Lcom/mob/commons/a/o$1;->a:Lcom/mob/commons/a/o;

    invoke-static {v0}, Lcom/mob/commons/a/o;->b(Lcom/mob/commons/a/o;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/mob/commons/a/o$1;->a:Lcom/mob/commons/a/o;

    invoke-static {v4}, Lcom/mob/commons/a/o;->c(Lcom/mob/commons/a/o;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_1

    .line 43
    iget-object v4, p0, Lcom/mob/commons/a/o$1;->a:Lcom/mob/commons/a/o;

    invoke-static {v4}, Lcom/mob/commons/a/o;->c(Lcom/mob/commons/a/o;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 45
    new-instance v4, Lcom/mob/commons/a/o;

    invoke-direct {v4}, Lcom/mob/commons/a/o;-><init>()V

    .line 46
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/Object;)Lcom/mob/commons/a/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/commons/a/c;->a(Z)Lcom/mob/commons/a/c;

    .line 47
    invoke-static {}, Lcom/mob/commons/a/d;->a()Lcom/mob/commons/a/d;

    move-result-object v5

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v2, v3, v0}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
