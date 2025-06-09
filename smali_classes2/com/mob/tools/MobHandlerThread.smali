.class public Lcom/mob/tools/MobHandlerThread;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# instance fields
.field private looper:Landroid/os/Looper;

.field private priority:I

.field private tid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->priority:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    .line 25
    iput p1, p0, Lcom/mob/tools/MobHandlerThread;->priority:I

    return-void
.end method

.method public static newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-static {v0, v0, p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static newHandler(Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {v0, p0, p1}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0, p1}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Handler;

    .line 132
    new-instance v1, Lcom/mob/tools/MobHandlerThread$1;

    invoke-direct {v1, p1, v0, p2}, Lcom/mob/tools/MobHandlerThread$1;-><init>(Ljava/lang/Runnable;[Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    .line 147
    monitor-enter v0

    if-eqz p0, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/mob/tools/MobHandlerThread;->setName(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-virtual {v1}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 155
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 157
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    monitor-enter p0

    .line 86
    :catchall_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 88
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;

    return-object v0

    :catchall_1
    move-exception v0

    .line 92
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getThreadId()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    return-void
.end method

.method protected onLooperPrepared(Landroid/os/Looper;)V
    .locals 0

    return-void
.end method

.method public quit()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public realRun()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public run()V
    .locals 2

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->realRun()V

    .line 49
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    .line 50
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 51
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    iget v0, p0, Lcom/mob/tools/MobHandlerThread;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 56
    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;

    invoke-virtual {p0, v0}, Lcom/mob/tools/MobHandlerThread;->onLooperPrepared(Landroid/os/Looper;)V

    .line 57
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->onLooperPrepared()V

    .line 58
    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 54
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 61
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
