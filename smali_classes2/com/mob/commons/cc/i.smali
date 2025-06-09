.class public Lcom/mob/commons/cc/i;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/m;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mob/commons/cc/i;->a:Lcom/mob/commons/cc/m;

    return-void
.end method

.method public a(Lcom/mob/commons/cc/i;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/i;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/i;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "setHandler"

    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    const/4 p5, 0x1

    if-ne p2, p5, :cond_0

    aget-object p2, p4, p3

    if-eqz p2, :cond_0

    instance-of p4, p2, Lcom/mob/commons/cc/m;

    if-eqz p4, :cond_0

    .line 33
    check-cast p2, Lcom/mob/commons/cc/m;

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/i;->a(Lcom/mob/commons/cc/m;)V

    return p5

    :cond_0
    return p3
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/mob/commons/cc/i;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/i;->a(Lcom/mob/commons/cc/i;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/mob/commons/cc/i;->a:Lcom/mob/commons/cc/m;

    if-eqz p1, :cond_0

    .line 18
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/mob/commons/cc/i;->a:Lcom/mob/commons/cc/m;

    const-string v0, "onReceive"

    invoke-virtual {p2, v0, p1}, Lcom/mob/commons/cc/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
