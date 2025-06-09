.class Lcom/mob/commons/FBManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/l;


# direct methods
.method constructor <init>(Lcom/mob/commons/l;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->c(Lcom/mob/commons/l;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/mob/commons/FBManager$2;->onStopped(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 4

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mob/commons/l;->b(Lcom/mob/commons/l;J)J

    .line 157
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->c(Lcom/mob/commons/l;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mob/commons/l;->a(Lcom/mob/commons/l;J)J

    .line 159
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->d(Lcom/mob/commons/l;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->d(Lcom/mob/commons/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/mob/commons/l;->a(Lcom/mob/commons/l;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 8

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->e(Lcom/mob/commons/l;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->e(Lcom/mob/commons/l;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {p1}, Lcom/mob/commons/l;->d(Lcom/mob/commons/l;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {p1}, Lcom/mob/commons/l;->c(Lcom/mob/commons/l;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object p1, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {p1}, Lcom/mob/commons/l;->c(Lcom/mob/commons/l;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_2
    move-wide v4, v2

    .line 179
    :goto_1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 180
    iput v0, p1, Landroid/os/Message;->what:I

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {v0}, Lcom/mob/commons/l;->d(Lcom/mob/commons/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {p1, v2, v3}, Lcom/mob/commons/l;->a(Lcom/mob/commons/l;J)J

    .line 185
    iget-object p1, p0, Lcom/mob/commons/FBManager$2;->a:Lcom/mob/commons/l;

    invoke-static {p1, v1}, Lcom/mob/commons/l;->a(Lcom/mob/commons/l;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method
