.class public Lcom/mob/tools/utils/MobPools$SynchronizedPool;
.super Lcom/mob/tools/utils/MobPools$SimplePool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mob/tools/utils/MobPools$SimplePool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/MobPools$SynchronizedPool;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPools$SimplePool;-><init>(I)V

    .line 76
    iput-object p2, p0, Lcom/mob/tools/utils/MobPools$SynchronizedPool;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/mob/tools/utils/MobPools$SynchronizedPool;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-super {p0}, Lcom/mob/tools/utils/MobPools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/mob/tools/utils/MobPools$SynchronizedPool;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Lcom/mob/tools/utils/MobPools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
