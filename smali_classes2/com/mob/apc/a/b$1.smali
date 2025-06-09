.class Lcom/mob/apc/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/apc/a/b;->a(Ljava/lang/String;Lcom/mob/apc/a/e;JLjava/util/concurrent/BlockingQueue;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/apc/a/e;

.field final synthetic c:J

.field final synthetic d:Ljava/util/concurrent/BlockingQueue;

.field final synthetic e:Lcom/mob/apc/a/b;


# direct methods
.method constructor <init>(Lcom/mob/apc/a/b;Ljava/lang/String;Lcom/mob/apc/a/e;JLjava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mob/apc/a/b$1;->e:Lcom/mob/apc/a/b;

    iput-object p2, p0, Lcom/mob/apc/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/apc/a/b$1;->b:Lcom/mob/apc/a/e;

    iput-wide p4, p0, Lcom/mob/apc/a/b$1;->c:J

    iput-object p6, p0, Lcom/mob/apc/a/b$1;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/mob/apc/a/b$1;->e:Lcom/mob/apc/a/b;

    iget-object v1, p0, Lcom/mob/apc/a/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/apc/a/b$1;->b:Lcom/mob/apc/a/e;

    invoke-static {v0, v1, v2}, Lcom/mob/apc/a/b;->a(Lcom/mob/apc/a/b;Ljava/lang/String;Lcom/mob/apc/a/e;)V

    .line 120
    iget-object v0, p0, Lcom/mob/apc/a/b$1;->e:Lcom/mob/apc/a/b;

    iget-object v1, p0, Lcom/mob/apc/a/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/apc/a/b$1;->b:Lcom/mob/apc/a/e;

    iget-wide v3, p0, Lcom/mob/apc/a/b$1;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mob/apc/a/b;->a(Lcom/mob/apc/a/b;Ljava/lang/String;Lcom/mob/apc/a/e;J)Lcom/mob/apc/a/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/mob/apc/a/b$1;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 122
    :try_start_2
    new-instance v2, Lcom/mob/apc/a/e;

    iget-object v3, p0, Lcom/mob/apc/a/b$1;->b:Lcom/mob/apc/a/e;

    iget-object v3, v3, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mob/apc/a/b$1;->c:J

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/mob/apc/a/e;-><init>(Lcom/mob/apc/a;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :try_start_3
    instance-of v1, v0, Lcom/mob/apc/APCException;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lcom/mob/apc/APCException;

    iput-object v0, v2, Lcom/mob/apc/a/e;->d:Lcom/mob/apc/APCException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/mob/apc/a/b$1;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_0
    iget-object v2, p0, Lcom/mob/apc/a/b$1;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 128
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    .line 130
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
