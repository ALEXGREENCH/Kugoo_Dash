.class public Lcom/mob/mcl/c/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/mcl/c/g;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/mcl/c/g;
    .locals 2

    .line 17
    sget-object v0, Lcom/mob/mcl/c/g;->a:Lcom/mob/mcl/c/g;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/mob/mcl/c/g;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/g;->a:Lcom/mob/mcl/c/g;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/mob/mcl/c/g;

    invoke-direct {v1}, Lcom/mob/mcl/c/g;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/g;->a:Lcom/mob/mcl/c/g;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/g;->a:Lcom/mob/mcl/c/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mob/mcl/c/g;->b:Ljava/util/List;

    return-object v0
.end method
