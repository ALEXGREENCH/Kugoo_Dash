.class public final Lcom/mob/tools/utils/ExecutorDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ExecutorDispatcher$a;,
        Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/mob/tools/utils/ExecutorDispatcher;


# instance fields
.field private final a:Lcom/mob/tools/utils/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/mob/tools/utils/ExecutorDispatcher$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/ExecutorDispatcher$a;-><init>(Lcom/mob/tools/utils/ExecutorDispatcher$1;)V

    iput-object v0, p0, Lcom/mob/tools/utils/ExecutorDispatcher;->a:Lcom/mob/tools/utils/a;

    return-void
.end method

.method public static getInstance()Lcom/mob/tools/utils/a;
    .locals 2

    .line 25
    sget-object v0, Lcom/mob/tools/utils/ExecutorDispatcher;->b:Lcom/mob/tools/utils/ExecutorDispatcher;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/mob/tools/utils/ExecutorDispatcher;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/ExecutorDispatcher;->b:Lcom/mob/tools/utils/ExecutorDispatcher;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/mob/tools/utils/ExecutorDispatcher;

    invoke-direct {v1}, Lcom/mob/tools/utils/ExecutorDispatcher;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/ExecutorDispatcher;->b:Lcom/mob/tools/utils/ExecutorDispatcher;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/ExecutorDispatcher;->b:Lcom/mob/tools/utils/ExecutorDispatcher;

    return-object v0
.end method


# virtual methods
.method public executeDelayed(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;",
            ">(TT;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 81
    :try_start_0
    iget-object p2, p0, Lcom/mob/tools/utils/ExecutorDispatcher;->a:Lcom/mob/tools/utils/a;

    invoke-interface {p2, p1}, Lcom/mob/tools/utils/a;->executeDuctile(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/ExecutorDispatcher;->a:Lcom/mob/tools/utils/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/utils/a;->executeDelayed(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 86
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public executeDuctile(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;",
            ">(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/ExecutorDispatcher;->a:Lcom/mob/tools/utils/a;

    invoke-interface {v0, p1}, Lcom/mob/tools/utils/a;->executeDuctile(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public executeImmediately(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;",
            ">(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/ExecutorDispatcher;->a:Lcom/mob/tools/utils/a;

    invoke-interface {v0, p1}, Lcom/mob/tools/utils/a;->executeImmediately(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public executeSerial(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;",
            ">(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/ExecutorDispatcher;->a:Lcom/mob/tools/utils/a;

    invoke-interface {v0, p1}, Lcom/mob/tools/utils/a;->executeSerial(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 58
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
