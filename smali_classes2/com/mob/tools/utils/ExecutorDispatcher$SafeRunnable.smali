.class public abstract Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/ExecutorDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SafeRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRun()V
    .locals 0

    return-void
.end method

.method public beforeRun()V
    .locals 0

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;->name()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;->beforeRun()V

    .line 107
    invoke-virtual {p0}, Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;->safeRun()V

    .line 108
    invoke-virtual {p0}, Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;->afterRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;->handleException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.method public abstract safeRun()V
.end method
