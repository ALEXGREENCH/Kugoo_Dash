.class public Lcom/mob/mcl/a/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mcl/a/a;


# instance fields
.field private volatile b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/mcl/a/a;
    .locals 2

    .line 42
    sget-object v0, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/mob/mcl/a/a;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/mob/mcl/a/a;

    invoke-direct {v1}, Lcom/mob/mcl/a/a;-><init>()V

    sput-object v1, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/mcl/a/a;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/mcl/a/a;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic b(Lcom/mob/mcl/a/a;)Ljava/util/Set;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/a;
    .locals 7

    const-string v0, "apc fw mg : "

    .line 116
    :try_start_0
    new-instance v4, Lcom/mob/apc/a;

    invoke-direct {v4}, Lcom/mob/apc/a;-><init>()V

    .line 117
    iput p1, v4, Lcom/mob/apc/a;->a:I

    .line 118
    iput-object p2, v4, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 119
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Lcom/mob/apc/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to ->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 120
    iget-object v3, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    int-to-long v5, p4

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 123
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/mob/apc/a;)Lcom/mob/apc/a;
    .locals 3

    .line 158
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apc received mg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 160
    new-instance p1, Lcom/mob/apc/a;

    invoke-direct {p1}, Lcom/mob/apc/a;-><init>()V

    .line 161
    iget v0, p2, Lcom/mob/apc/a;->a:I

    iput v0, p1, Lcom/mob/apc/a;->a:I

    .line 162
    iget v0, p2, Lcom/mob/apc/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 164
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->e()Z

    move-result v0

    const-string v1, "isTcpAvailable"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    iput-object p2, p1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    return-object p1

    .line 167
    :cond_0
    iget v0, p2, Lcom/mob/apc/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 169
    iget-object p2, p2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 170
    invoke-static {p2}, Lcom/mob/mcl/a/b;->a(Landroid/os/Bundle;)Lcom/mob/mcl/a/b;

    move-result-object p2

    .line 171
    iput-object p2, p1, Lcom/mob/apc/a;->d:Ljava/lang/Object;

    return-object p1

    .line 173
    :cond_1
    iget p2, p2, Lcom/mob/apc/a;->a:I

    const/16 v0, 0x232c

    if-ne p2, v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "data"

    .line 130
    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 134
    new-instance v6, Lcom/mob/apc/a;

    invoke-direct {v6}, Lcom/mob/apc/a;-><init>()V

    const/4 v2, 0x2

    .line 135
    iput v2, v6, Lcom/mob/apc/a;->a:I

    .line 136
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v6, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 138
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apc sd mg : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/mob/apc/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to ->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 139
    iget-object v5, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    iget v7, p6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    int-to-long v7, v7

    invoke-static/range {v3 .. v8}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 140
    iget v4, v3, Lcom/mob/apc/a;->a:I

    if-ne v4, v2, :cond_0

    iget-object v2, v3, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, v3, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 142
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apc receive rp mg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apc receive rp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    .line 148
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 152
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "apc list is null"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/mob/apc/b$b;)V
    .locals 3

    const-string v0, "MobMCL"

    .line 57
    iput-object v0, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/mob/apc/b;->a(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result p1

    .line 60
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init apc, main p: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mob/apc/b;->a(Ljava/lang/String;Lcom/mob/apc/b$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mob/tools/utils/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v1

    .line 79
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "qy tp svc, main p: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 81
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    new-instance v1, Lcom/mob/mcl/a/a$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/mob/mcl/a/a$1;-><init>(Lcom/mob/mcl/a/a;Ljava/util/List;Lcom/mob/tools/utils/e;)V

    invoke-static {v1}, Lcom/mob/apc/b;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mob/apc/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 183
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-object v0, p2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
