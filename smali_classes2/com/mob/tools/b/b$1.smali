.class Lcom/mob/tools/b/b$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/b;->a(Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/mob/tools/b/b;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/b;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1702
    iput-object p1, p0, Lcom/mob/tools/b/b$1;->b:Lcom/mob/tools/b/b;

    iput-object p2, p0, Lcom/mob/tools/b/b$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1706
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/v;->a(Landroid/content/BroadcastReceiver;)V

    const-string p1, "029efBedekelejedemHfgjKemghejfgejemfmfegefheihkhjfmflgfgdfm"

    .line 1707
    invoke-static {p1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1709
    iget-object p1, p0, Lcom/mob/tools/b/b$1;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1712
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
