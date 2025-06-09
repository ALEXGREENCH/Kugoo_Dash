.class Lcom/mob/mcl/Tmpc$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/a;->a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/a$a;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mob/mcl/a$a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mob/mcl/Tmpc$3;->a:Lcom/mob/mcl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 4

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/mob/mcl/Tmpc$3;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/mcl/Tmpc$3;->b:J

    .line 81
    iget-object v0, p0, Lcom/mob/mcl/Tmpc$3;->a:Lcom/mob/mcl/a$a;

    invoke-virtual {v0}, Lcom/mob/mcl/a$a;->a()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/mob/mcl/Tmpc$3;->c:Ljava/lang/String;
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
    .locals 4

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/Tmpc$3;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide/16 v2, 0x0

    .line 96
    iput-wide v2, p0, Lcom/mob/mcl/Tmpc$3;->b:J

    .line 97
    iput-object v1, p0, Lcom/mob/mcl/Tmpc$3;->c:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/mob/mcl/Tmpc$3;->a:Lcom/mob/mcl/a$a;

    invoke-virtual {p1}, Lcom/mob/mcl/a$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
