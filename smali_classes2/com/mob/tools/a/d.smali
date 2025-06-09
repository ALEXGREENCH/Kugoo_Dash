.class public Lcom/mob/tools/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/a/d;


# instance fields
.field private b:Lcom/mob/tools/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "3xu: "

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/d;->a()Z

    move-result v1

    .line 29
    invoke-direct {p0}, Lcom/mob/tools/a/d;->b()Z

    move-result v2

    .line 30
    invoke-direct {p0}, Lcom/mob/tools/a/d;->c()Z

    move-result v3

    .line 31
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/CSCenter;->isDREnable()Z

    move-result v4

    .line 32
    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/mob/tools/b/a;->ak()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 33
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", 3xd: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", dre: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", obf: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", tar: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", api: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    const/16 v0, 0x1e

    if-lt v5, v0, :cond_2

    if-lt v6, v0, :cond_2

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/mob/tools/a/c;

    invoke-direct {v0}, Lcom/mob/tools/a/c;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "3xu"

    .line 43
    invoke-static {v2}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 49
    new-instance v0, Lcom/mob/tools/a/b;

    invoke-direct {v0}, Lcom/mob/tools/a/b;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/mob/tools/a/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "3xd"

    .line 51
    invoke-static {p1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    .line 52
    iput-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    goto :goto_1

    :cond_2
    const-string p1, "2x"

    .line 56
    invoke-static {p1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    .line 57
    new-instance p1, Lcom/mob/tools/a/e;

    invoke-direct {p1}, Lcom/mob/tools/a/e;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/tools/a/d;
    .locals 2

    const-class v0, Lcom/mob/tools/a/d;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 17
    new-instance v1, Lcom/mob/tools/a/d;

    invoke-direct {v1, p0}, Lcom/mob/tools/a/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;

    .line 19
    :cond_0
    sget-object p0, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3

    .line 117
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[HH] "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method private a()Z
    .locals 3

    const-string v0, "0024cbde"

    .line 121
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 113
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[HH] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method private b()Z
    .locals 3

    const-string v0, "0024cfeh"

    .line 125
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c()Z
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/mob/tools/a/d;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "014bIcjceckcecjeeckgbcjeedkekhb"

    .line 135
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/MobSDK;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "024bBcjceckcecjeeck*bJcjcececj.d4ehckdcdkdcLedheDci"

    .line 136
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/CSCenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 138
    invoke-static {v1}, Lcom/mob/tools/a/d;->a(Ljava/lang/Throwable;)V

    .line 141
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ck-cn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 64
    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p6
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 71
    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p4
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Lcom/mob/tools/a/a;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/mob/tools/a/b;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
