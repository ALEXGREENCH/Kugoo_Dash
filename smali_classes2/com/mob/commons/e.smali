.class public final Lcom/mob/commons/e;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Ljava/lang/String; = null

.field private static volatile b:Ljava/lang/Boolean; = null

.field private static volatile c:Ljava/lang/String; = null

.field private static volatile d:Z = false

.field private static e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/mob/commons/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/commons/e;->e:Ljava/util/HashSet;

    .line 30
    new-instance v0, Lcom/mob/commons/a;

    invoke-direct {v0}, Lcom/mob/commons/a;-><init>()V

    sput-object v0, Lcom/mob/commons/e;->f:Lcom/mob/commons/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/mob/tools/b/a;->ai()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/mob/commons/e;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    sget-object v1, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 74
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 34
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/mob/commons/e;->d:Z

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 48
    invoke-static {}, Lcom/mob/commons/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Lcom/mob/commons/e;->d()Lcom/mob/commons/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sput-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    .line 58
    :cond_1
    sget-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "aut pro: "

    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/aa;->a(Lcom/mob/commons/MobProduct;)V

    .line 90
    sget-object v4, Lcom/mob/commons/e;->e:Ljava/util/HashSet;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 92
    sget-object v5, Lcom/mob/commons/e;->e:Ljava/util/HashSet;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v4, v3

    .line 95
    :cond_1
    :goto_0
    sget-object v5, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-static {}, Lcom/mob/commons/e;->d()Lcom/mob/commons/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/a;->b()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mob/commons/e;->a:Ljava/lang/String;

    move v4, v2

    .line 100
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", ndReg: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", hsReged: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v6, Lcom/mob/commons/e;->d:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v4, :cond_3

    .line 101
    sget-boolean v0, Lcom/mob/commons/e;->d:Z

    if-nez v0, :cond_4

    .line 102
    :cond_3
    sget-object v0, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/mob/commons/e$1;

    invoke-direct {v4, p0}, Lcom/mob/commons/e$1;-><init>(Lcom/mob/commons/MobProduct;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_4
    sget-object p0, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    .line 140
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    const-string v0, "key_curr_passed_duid"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/mob/commons/ab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    sput-object p0, Lcom/mob/commons/e;->c:Ljava/lang/String;

    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    .line 148
    :cond_6
    :goto_1
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p0

    const-string v0, "key_curr_passed_duid"

    sget-object v2, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 150
    sget-object v0, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    sget-object v2, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isModified"

    .line 151
    sget-object v2, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duidPrevious"

    .line 152
    sget-object v2, Lcom/mob/commons/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method static synthetic c()Lcom/mob/commons/a;
    .locals 1

    .line 22
    invoke-static {}, Lcom/mob/commons/e;->d()Lcom/mob/commons/a;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lcom/mob/commons/a;
    .locals 1

    .line 157
    sget-object v0, Lcom/mob/commons/e;->f:Lcom/mob/commons/a;

    return-object v0
.end method
