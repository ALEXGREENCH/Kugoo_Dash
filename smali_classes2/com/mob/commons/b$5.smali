.class Lcom/mob/commons/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->b(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/mob/commons/b$5;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 5

    .line 560
    sget-object v0, Lcom/mob/tools/c/a;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 562
    :try_start_0
    invoke-static {p1}, Lcom/mob/commons/b;->a(Lcom/mob/tools/utils/DH$DHResponse;)Ljava/util/HashMap;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 564
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mob/commons/b;->m()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    :cond_1
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    .line 566
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 568
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 570
    :goto_1
    invoke-static {p1}, Lcom/mob/commons/b;->a(Lcom/mob/tools/utils/DH$DHResponse;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    :cond_2
    invoke-static {}, Lcom/mob/commons/b;->m()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    goto :goto_0

    .line 577
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/b$5;->a:Lcom/mob/tools/utils/e;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 579
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 580
    iget-object p1, p0, Lcom/mob/commons/b$5;->a:Lcom/mob/tools/utils/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
