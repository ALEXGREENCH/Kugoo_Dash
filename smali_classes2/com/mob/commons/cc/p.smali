.class public Lcom/mob/commons/cc/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/p;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/m;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/m;

    return-void
.end method

.method public a(Lcom/mob/commons/cc/p;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/p;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/p;",
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

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    const/4 p5, 0x1

    if-ne p2, p5, :cond_0

    .line 43
    aget-object p2, p4, p3

    check-cast p2, Lcom/mob/commons/cc/m;

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/p;->a(Lcom/mob/commons/cc/m;)V

    return p5

    :cond_0
    return p3
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/mob/commons/cc/p;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/p;->a(Lcom/mob/commons/cc/p;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/m;

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/m;

    const-string p2, "onServiceConnected"

    invoke-virtual {p1, p2, v0}, Lcom/mob/commons/cc/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/m;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/m;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {p1, v1, v0}, Lcom/mob/commons/cc/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
