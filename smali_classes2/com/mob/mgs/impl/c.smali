.class public Lcom/mob/mgs/impl/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/apc/b$a;
.implements Lcom/mob/apc/b$b;
.implements Lcom/mob/apc/b$c;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lcom/mob/mgs/impl/c;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.mob.intent.MOB_GUARD_SERVICE"

    const-string v1, "com.mob.intent.MOB_ID_SERVICE"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/mgs/impl/c;->a:[Ljava/lang/String;

    const-string v0, "com.mob.guard.MobGuardPullUpService"

    const-string v1, "com.mob.id.MobIDService"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/mgs/impl/c;->b:[Ljava/lang/String;

    const-string v0, "com.mob.guard.MobTranPullUpActivity"

    const-string v1, "com.mob.id.MobIDActivity"

    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/mgs/impl/c;->c:[Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/mob/mgs/impl/c;

    invoke-direct {v0}, Lcom/mob/mgs/impl/c;-><init>()V

    sput-object v0, Lcom/mob/mgs/impl/c;->d:Lcom/mob/mgs/impl/c;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/mgs/impl/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/c;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/mob/mgs/impl/c;->h:Z

    .line 71
    iput v1, p0, Lcom/mob/mgs/impl/c;->i:I

    .line 72
    iput v1, p0, Lcom/mob/mgs/impl/c;->j:I

    .line 73
    iput-object v0, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    .line 74
    iput-object v0, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    .line 84
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/c;->o:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/mgs/impl/c$1;

    invoke-direct {v1, p0}, Lcom/mob/mgs/impl/c$1;-><init>(Lcom/mob/mgs/impl/c;)V

    invoke-static {v1}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/mob/mgs/impl/c;->j:I

    return p1
.end method

.method public static a()Lcom/mob/mgs/impl/c;
    .locals 1

    .line 80
    sget-object v0, Lcom/mob/mgs/impl/c;->d:Lcom/mob/mgs/impl/c;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/e<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 896
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GD]busType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", workId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 897
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/mob/mgs/impl/c$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/mob/mgs/impl/c$6;-><init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Lcom/mob/tools/utils/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2, v8}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 764
    invoke-static {p0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMpfof(ZLjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/mob/mgs/impl/c$5;

    invoke-direct {v0, p1, p2}, Lcom/mob/mgs/impl/c$5;-><init>(Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/mob/mgs/impl/c;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/mob/mgs/impl/c;->b(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;ZLjava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/mob/mgs/impl/c;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mob/tools/utils/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 229
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v8, v1

    move v1, v0

    .line 236
    :goto_0
    sget-object v5, Lcom/mob/mgs/impl/c;->a:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_1

    const-string v6, "android.content.Intent"

    .line 238
    invoke-static {v6}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "Intent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 239
    aget-object v5, v5, v1

    aput-object v5, v9, v0

    invoke-static {v6, v9}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-nez v8, :cond_0

    .line 242
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v8

    .line 244
    :cond_0
    invoke-virtual {v8, v5, v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->queryIntentServices(Landroid/content/Intent;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    .line 247
    new-instance v9, Lcom/mob/mgs/impl/c$10;

    move-object v0, v9

    move-object v1, p0

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mob/mgs/impl/c$10;-><init>(Lcom/mob/mgs/impl/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/mob/tools/utils/e;)V

    invoke-virtual {v8, v9}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 334
    invoke-virtual {p1, v7}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 338
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_3

    .line 340
    invoke-virtual {p1, v7}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 8

    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/mob/mgs/impl/c;->n:Z

    .line 603
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "pkg"

    .line 604
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 606
    :try_start_0
    new-instance v5, Lcom/mob/apc/a;

    invoke-direct {v5}, Lcom/mob/apc/a;-><init>()V

    const/16 v2, 0x3eb

    .line 607
    iput v2, v5, Lcom/mob/apc/a;->a:I

    .line 608
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "guardId"

    .line 609
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    .line 610
    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "workId"

    .line 611
    iget-object v4, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iput-object v2, v5, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    const/4 v2, 0x1

    const-string v4, "MOBGUARD"

    const-wide/16 v6, 0x1388

    move-object v3, v1

    .line 613
    invoke-static/range {v2 .. v7}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v2

    .line 614
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Guard] syncId updateClientIDs sendAPCMessage :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", response: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 616
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 617
    iput-boolean v1, p0, Lcom/mob/mgs/impl/c;->n:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, ", isLive: "

    const-string v1, "checkAppLive appStatus: "

    const/4 v2, 0x1

    new-array v3, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    const/4 v5, -0x1

    .line 1009
    :try_start_0
    iget-object v6, p0, Lcom/mob/mgs/impl/c;->o:Landroid/content/Context;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    aput-boolean v2, v3, v4

    .line 1013
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    .line 1016
    :cond_0
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 1017
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/mob/mgs/impl/a;->a(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/mob/mgs/impl/c;->o:Landroid/content/Context;

    new-instance v6, Lcom/mob/mgs/impl/c$8;

    invoke-direct {v6, p0, p2, v3}, Lcom/mob/mgs/impl/c$8;-><init>(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;[Z)V

    invoke-static {v2, p1, v6}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    goto :goto_0

    :cond_1
    if-ne v5, v2, :cond_3

    .line 1031
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v7, v8, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 1033
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, v3, v4

    :cond_2
    if-eqz p2, :cond_3

    aget-boolean p1, v3, v4

    .line 1036
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :cond_3
    :goto_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-boolean v0, v3, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1040
    :try_start_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    aget-boolean p1, v3, v4

    .line 1042
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1045
    :cond_4
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-boolean v0, v3, v4

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-boolean v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 1046
    throw p1
.end method

.method private a(ZLjava/lang/String;)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v0, p1

    const-string v8, "times"

    const-string v9, "pkg"

    const-string v10, ", alwup: "

    const-string v1, "[GD] uplvapp whole: "

    const-string v2, "[EC] isClear upl: "

    .line 414
    :try_start_0
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/commons/j;->b()Z

    move-result v3

    .line 415
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    .line 419
    iput-boolean v11, v7, Lcom/mob/mgs/impl/c;->m:Z

    .line 420
    iget v2, v7, Lcom/mob/mgs/impl/c;->i:I

    if-eqz v0, :cond_1

    .line 423
    iget-object v2, v7, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 425
    :cond_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", frm: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v7, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v2, :cond_2

    return-void

    .line 429
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v1, v7, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/HashMap;

    .line 431
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v1, v15}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 432
    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v3, :cond_3

    goto :goto_0

    .line 436
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "executeResult"

    if-gtz v6, :cond_4

    :try_start_1
    const-string v1, "ooo"

    .line 439
    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-gtz v2, :cond_5

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 449
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 451
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v11

    invoke-virtual {v11, v3, v1}, Lcom/mob/mgs/impl/a;->a(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)I

    move-result v11

    .line 452
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v15

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "[GD] sendAliveCheckMessage appStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", whole: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const/4 v15, 0x1

    if-nez v11, :cond_6

    if-nez v0, :cond_6

    move-object/from16 v5, p2

    .line 453
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 455
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 456
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v11, Lcom/mob/mgs/impl/c$13;

    invoke-direct {v11, v7, v1}, Lcom/mob/mgs/impl/c$13;-><init>(Lcom/mob/mgs/impl/c;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v4, v3, v11}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    .line 463
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v12

    const-wide/16 v11, 0x3e8

    invoke-interface {v1, v11, v12, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_6
    move-object/from16 v5, p2

    :cond_7
    move-object/from16 v18, v12

    if-ne v11, v15, :cond_8

    .line 466
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x7d0

    invoke-virtual {v1, v11, v12, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 468
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 471
    :goto_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GD] Proc gd. pkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", islv: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", times: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v1, :cond_b

    .line 473
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v4, 0x7d0

    .line 474
    iget-object v12, v7, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Lcom/mob/mgs/impl/c$14;

    invoke-direct {v1, v7, v11}, Lcom/mob/mgs/impl/c$14;-><init>(Lcom/mob/mgs/impl/c;Ljava/util/concurrent/BlockingQueue;)V

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move/from16 v21, v2

    move v2, v4

    move-object/from16 v15, v16

    move-object v4, v12

    move-object/from16 v12, v17

    move-object/from16 v5, v19

    move/from16 v16, v6

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/mob/mgs/impl/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    .line 480
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-interface {v11, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 482
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 484
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_2

    :cond_9
    const/4 v15, 0x0

    :goto_2
    const-string v2, "uncertain"

    .line 486
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    .line 487
    iput-boolean v2, v7, Lcom/mob/mgs/impl/c;->m:Z

    .line 489
    :cond_a
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v6, v16, -0x1

    .line 491
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    move/from16 v21, v2

    move-object/from16 v15, v16

    move-object/from16 v12, v17

    move/from16 v16, v6

    const-string v1, "alive"

    .line 495
    invoke-virtual {v12, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, v16

    :goto_3
    const-string v1, "remainCount"

    .line 497
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    .line 498
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v1

    move/from16 v2, v21

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    :goto_4
    move-object v1, v12

    .line 500
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GD] uplvapp result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 501
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 503
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mob/mgs/impl/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 506
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[GD] uplvapp exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/mob/mgs/impl/c;->m:Z

    return p0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/mob/mgs/impl/c;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/mob/mgs/impl/c;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/mob/mgs/impl/c;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/mob/mgs/impl/c;->i:I

    return p1
.end method

.method static synthetic b(Lcom/mob/mgs/impl/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/e<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 939
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 940
    iget-object v1, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 944
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/mob/mgs/impl/c;->c:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-direct {v2, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x18800000

    .line 946
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "workId"

    .line 949
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "duid"

    .line 950
    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "appkey"

    .line 951
    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "pkg"

    .line 952
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "guardId"

    .line 953
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "busType"

    .line 954
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-string p1, "startActivityTime"

    .line 961
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "startActivityDuration"

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p3, 0x140

    .line 965
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V

    .line 966
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Lcom/mob/mgs/impl/c$7;

    invoke-direct {p3, p0, p2, v0, p5}, Lcom/mob/mgs/impl/c$7;-><init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/utils/e;)V

    invoke-static {p1, p2, p3}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 981
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 982
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "[GD] stAct rst.  pkg: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ", exception: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string p1, "executeResult"

    const-string p2, "fail"

    .line 983
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 985
    invoke-virtual {p5, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method private b(Lcom/mob/tools/utils/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/mob/mgs/impl/c$11;

    invoke-direct {v0, p0, p1}, Lcom/mob/mgs/impl/c$11;-><init>(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;)V

    invoke-direct {p0, v0}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method static synthetic b(Lcom/mob/mgs/impl/c;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/mob/mgs/impl/c;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/mob/mgs/impl/c;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->g()V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 378
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_lock_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ";"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 381
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 382
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method static synthetic d(Lcom/mob/mgs/impl/c;)Ljava/util/HashMap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/mob/mgs/impl/c;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/mob/mgs/impl/c;->n:Z

    return p0
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/mob/mgs/impl/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    const-string v0, "[Guard] init guardId:"

    .line 108
    :try_start_0
    sget-object v1, Lcom/mob/mgs/impl/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/apc/b;->a(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    invoke-static {v1}, Lcom/mob/elp/MobELP;->init(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    :try_start_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    const-string v3, "No [MobELP] module."

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    :goto_0
    const-string v2, "MOBGUARD"

    .line 120
    invoke-static {v2, p0}, Lcom/mob/apc/b;->a(Ljava/lang/String;Lcom/mob/apc/b$b;)V

    .line 122
    invoke-static {p0}, Lcom/mob/apc/b;->a(Lcom/mob/apc/b$c;)V

    .line 124
    invoke-static {p0}, Lcom/mob/apc/b;->a(Lcom/mob/apc/b$a;)V

    .line 126
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mob/mcl/MobMCL;->initMCLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mob/mcl/MobMCL;->getCreateSuidTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 131
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private g()V
    .locals 13

    .line 538
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Guard] syncId upPkgList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 542
    :cond_0
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getCreateSuidTime()J

    move-result-wide v1

    .line 546
    iget-object v3, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "pkg"

    .line 547
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 548
    new-instance v10, Lcom/mob/apc/a;

    invoke-direct {v10}, Lcom/mob/apc/a;-><init>()V

    const/16 v7, 0x3e9

    .line 549
    iput v7, v10, Lcom/mob/apc/a;->a:I

    const/4 v7, 0x1

    :try_start_0
    const-string v9, "MOBGUARD"

    const-wide/16 v11, 0x1388

    move-object v8, v5

    .line 552
    invoke-static/range {v7 .. v12}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    .line 554
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 556
    :goto_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Guard] syncId getClientIDs sendAPCMessage pkg: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", response:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    .line 558
    iget-object v5, v6, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v6, "guardId"

    .line 560
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timestamp"

    .line 561
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 562
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    cmp-long v5, v7, v1

    if-gez v5, :cond_1

    move-object v4, v6

    move-wide v1, v7

    goto :goto_0

    .line 572
    :cond_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Guard] syncId update guardId :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 576
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 577
    new-instance v3, Lcom/mob/mgs/impl/c$16;

    invoke-direct {v3, p0, v0}, Lcom/mob/mgs/impl/c$16;-><init>(Lcom/mob/mgs/impl/c;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v4, v1, v2, v3}, Lcom/mob/mcl/MobMCL;->syncSuid(Ljava/lang/String;JLcom/mob/tools/utils/e;)V

    .line 584
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3e8

    invoke-interface {v0, v5, v6, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 586
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 589
    :cond_3
    :goto_2
    invoke-direct {p0, v4, v1, v2}, Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;J)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 6

    .line 624
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "[Guard] onAPCMessageReceive APCMessage:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ", pkg:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 625
    new-instance p1, Lcom/mob/apc/a;

    invoke-direct {p1}, Lcom/mob/apc/a;-><init>()V

    .line 627
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object p3

    .line 628
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getCreateSuidTime()J

    move-result-wide v0

    .line 630
    iget p4, p2, Lcom/mob/apc/a;->a:I

    const/16 v2, 0x3e9

    const-string v3, "timestamp"

    const-string v4, "guardId"

    if-eq p4, v2, :cond_1

    const/16 v2, 0x3eb

    if-eq p4, v2, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iget-object p2, p2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    .line 642
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 643
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "workId"

    .line 644
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 646
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    cmp-long p2, v2, v0

    if-gez p2, :cond_2

    .line 649
    new-instance p2, Lcom/mob/mgs/impl/c$2;

    invoke-direct {p2, p0, p4, v2, v3}, Lcom/mob/mgs/impl/c$2;-><init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;J)V

    .line 661
    invoke-virtual {p2}, Lcom/mob/mgs/impl/c$2;->start()V

    goto :goto_0

    .line 632
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 633
    invoke-virtual {p2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 635
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "pkg"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iput-object p2, p1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x7d1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p1, 0x7d2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 717
    :goto_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[requestInvokeGd]finalBusType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eq p1, v1, :cond_2

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 721
    :try_start_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 722
    new-instance v2, Lcom/mob/mgs/impl/c$3;

    invoke-direct {v2, p0, v1}, Lcom/mob/mgs/impl/c$3;-><init>(Lcom/mob/mgs/impl/c;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/mob/mgs/impl/c;->a(ILjava/lang/String;Lcom/mob/tools/utils/e;)V

    .line 728
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-interface {v1, v2, v3, p1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 730
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    .line 734
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public a(ILjava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/e<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1002
    iget-object v3, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mob/mgs/impl/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 681
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "workId"

    .line 683
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appkey"

    .line 684
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duid"

    .line 685
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "guardId"

    .line 686
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkg"

    .line 688
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "acsActType"

    .line 689
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "acServiceType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mgs/impl/c$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/mob/mgs/impl/c$12;-><init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 747
    :try_start_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 748
    new-instance v1, Lcom/mob/mgs/impl/c$4;

    invoke-direct {v1, p0, v0}, Lcom/mob/mgs/impl/c$4;-><init>(Lcom/mob/mgs/impl/c;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, p1, v1}, Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    .line 754
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->f()V

    .line 137
    invoke-static {}, Lcom/mob/mgs/MobMGS;->getDS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "DS off"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getAInfoForPkg(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/mgs/impl/c$9;

    invoke-direct {v1, p0}, Lcom/mob/mgs/impl/c$9;-><init>(Lcom/mob/mgs/impl/c;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 517
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Guard] syncId newClientPkg : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " syncIdFailed : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/mob/mgs/impl/c;->n:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 518
    iget-boolean p1, p0, Lcom/mob/mgs/impl/c;->n:Z

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Lcom/mob/mgs/impl/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/mgs/impl/c$15;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/c$15;-><init>(Lcom/mob/mgs/impl/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 392
    iget v0, p0, Lcom/mob/mgs/impl/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()V
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/mob/mgs/impl/c;->h:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->g()V

    :cond_0
    return-void
.end method
