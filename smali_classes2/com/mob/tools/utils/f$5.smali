.class Lcom/mob/tools/utils/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/ReflectHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/f;->f()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/utils/ReflectHelper$a<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/f;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/f;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/f$5;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "[212] oncge"

    if-eqz p1, :cond_1

    .line 156
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_1

    .line 157
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 159
    aget-object v1, p1, v0

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 160
    check-cast v1, Ljava/util/List;

    .line 161
    iget-object p1, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    invoke-static {p1}, Lcom/mob/tools/utils/f;->d(Lcom/mob/tools/utils/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    invoke-static {v1}, Lcom/mob/tools/utils/f;->d(Lcom/mob/tools/utils/f;)Ljava/util/List;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    invoke-static {p1}, Lcom/mob/tools/utils/f;->e(Lcom/mob/tools/utils/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    iget-object p1, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    monitor-enter p1

    .line 172
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 169
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 171
    iget-object p1, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    monitor-enter p1

    .line 172
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit p1

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_3
    move-exception p1

    .line 171
    iget-object v0, p0, Lcom/mob/tools/utils/f$5;->a:Lcom/mob/tools/utils/f;

    monitor-enter v0

    .line 172
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 174
    throw p1

    :catchall_4
    move-exception p1

    .line 173
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1
.end method
