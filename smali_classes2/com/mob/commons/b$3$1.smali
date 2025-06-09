.class Lcom/mob/commons/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$3;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$3;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 7

    const/4 p1, 0x1

    .line 406
    invoke-static {p1}, Lcom/mob/commons/b;->a(Z)Z

    .line 407
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "b lk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", proc st"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 409
    iget-object v4, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget-boolean v4, v4, Lcom/mob/commons/b$3;->b:Z

    invoke-static {v4}, Lcom/mob/commons/b;->b(Z)V

    .line 410
    iget-object v4, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget-boolean v4, v4, Lcom/mob/commons/b$3;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget-boolean v4, v4, Lcom/mob/commons/b$3;->c:Z

    if-eqz v4, :cond_1

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget v4, v4, Lcom/mob/commons/b$3;->d:I

    invoke-static {v4}, Lcom/mob/commons/b;->a(I)V

    .line 413
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", proc ed, dur: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", release: n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 414
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 415
    invoke-static {}, Landroid/os/Looper;->loop()V

    return p1
.end method
