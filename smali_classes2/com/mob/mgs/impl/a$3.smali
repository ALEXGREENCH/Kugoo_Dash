.class Lcom/mob/mgs/impl/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mob/mgs/impl/a;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/a;Z)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    iput-boolean p2, p0, Lcom/mob/mgs/impl/a$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 304
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/c;->a()Lcom/mob/mgs/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 307
    iget-object v1, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/a;->a(Ljava/util/concurrent/BlockingQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 309
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/mob/mgs/impl/c;->a()Lcom/mob/mgs/impl/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 315
    :try_start_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->f(Lcom/mob/mgs/impl/a;)I

    move-result v0

    if-lez v0, :cond_2

    .line 319
    iget-boolean v0, p0, Lcom/mob/mgs/impl/a$3;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->f(Lcom/mob/mgs/impl/a;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 322
    :try_start_3
    iget-object v0, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->f(Lcom/mob/mgs/impl/a;)I

    move-result v0

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :catchall_1
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->g(Lcom/mob/mgs/impl/a;)I

    .line 327
    iget-object v0, p0, Lcom/mob/mgs/impl/a$3;->b:Lcom/mob/mgs/impl/a;

    invoke-virtual {v0}, Lcom/mob/mgs/impl/a;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 330
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
