.class public Lcom/mob/mgs/impl/f;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mgs/impl/f;


# instance fields
.field private volatile b:Z

.field private volatile c:Ljava/lang/String;

.field private d:[B

.field private volatile e:Z

.field private volatile f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/mob/mgs/impl/f;->b:Z

    new-array v0, v0, [B

    .line 36
    iput-object v0, p0, Lcom/mob/mgs/impl/f;->d:[B

    return-void
.end method

.method public static a()Lcom/mob/mgs/impl/f;
    .locals 2

    .line 43
    sget-object v0, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/mob/mgs/impl/f;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/mob/mgs/impl/f;

    invoke-direct {v1}, Lcom/mob/mgs/impl/f;-><init>()V

    sput-object v1, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/f;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/mob/mgs/impl/f;->b:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/mob/mgs/impl/f;->b:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/mob/mgs/impl/f$1;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/f$1;-><init>(Lcom/mob/mgs/impl/f;)V

    .line 69
    invoke-virtual {v0}, Lcom/mob/mgs/impl/f$1;->start()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "MgsGlobal already initialized"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "WARNING: getDuidQuick got null!"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/mob/mgs/impl/f;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    const-string v0, "MC Global -> duid: "

    .line 116
    iget-object v1, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/mob/mgs/impl/f;->d:[B

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 119
    invoke-static {v2}, Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    sget-object v3, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    const-string v3, "isModified"

    .line 123
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mob/mgs/impl/f;->e:Z

    const-string v3, "duidPrevious"

    .line 124
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mob/mgs/impl/f;->f:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", duidPre: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/mob/mgs/impl/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isModified: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/mob/mgs/impl/f;->e:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    return-object v0
.end method
