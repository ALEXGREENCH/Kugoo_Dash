.class public Lcom/mob/mcl/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/mcl/c/d;


# static fields
.field private static volatile n:Lcom/mob/mcl/c/h;


# instance fields
.field private A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private B:Lcom/mob/mcl/TcpStatusListener;

.field private C:Lcom/mob/mcl/TcpStatus;

.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/atomic/AtomicLong;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Z

.field private o:Lcom/mob/tools/network/NetworkHelper;

.field private p:Lcom/mob/tools/utils/HashonHelper;

.field private q:Lcom/mob/mcl/c/f;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/content/Context;

.field private u:Lcom/mob/mcl/MobMCL$ELPMessageListener;

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Lcom/mob/mcl/BusinessMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/mob/mcl/d/c;

.field private y:Lcom/mob/mgs/OnIdChangeListener;

.field private z:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x10e

    .line 83
    iput v0, p0, Lcom/mob/mcl/c/h;->e:I

    const/16 v0, 0x1f4

    .line 84
    iput v0, p0, Lcom/mob/mcl/c/h;->f:I

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/mob/mcl/c/h;->z:I

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP tpHelper init"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/mob/mcl/c/f;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/f;-><init>(Lcom/mob/mcl/c/d;)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    .line 134
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/network/NetworkHelper;

    .line 135
    new-instance v0, Lcom/mob/tools/utils/HashonHelper;

    invoke-direct {v0}, Lcom/mob/tools/utils/HashonHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/tools/utils/HashonHelper;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    .line 137
    new-instance v0, Lcom/mob/mcl/d/c;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/mcl/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mcl/d/c;

    .line 144
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 985
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 987
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 988
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private a(J)Lcom/mob/mcl/c/c;
    .locals 5

    const-string v0, "TP sd ty = "

    .line 322
    iget-object v1, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    if-eqz v1, :cond_0

    .line 324
    :try_start_0
    new-instance v1, Lcom/mob/mcl/c/e;

    const/16 v2, 0x3ed

    invoke-direct {v1, v2}, Lcom/mob/mcl/c/e;-><init>(I)V

    .line 325
    iput-wide p1, v1, Lcom/mob/mcl/c/e;->c:J

    .line 326
    iget-object v2, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    invoke-virtual {v2, v1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object v2

    .line 327
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " , u = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bo : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 330
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(JLjava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 870
    invoke-direct/range {v0 .. v6}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private a(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 12

    move-object v8, p0

    const-string v0, "[dealBusinessMsg]TP Biz msg listener detected, callback directly. bisType: "

    const-string v1, "[dealBusinessMsg]TP No biz msg listener detected, cache msg. bisType: "

    .line 877
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "uniqueId"

    .line 878
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    .line 880
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 882
    iget-object v2, v8, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 884
    iget-object v0, v8, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 885
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 886
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mob/mcl/BusinessMessageListener;

    .line 888
    new-instance v11, Lcom/mob/mcl/c/h$2;

    move-object v1, v11

    move-object v2, p0

    move-object v4, v10

    move-object v5, p3

    move-object v6, v9

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/mob/mcl/c/h$2;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v1, v11}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 907
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 909
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bisType"

    .line 910
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "workId"

    move-object v2, p3

    .line 911
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "json"

    .line 912
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/c/g;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 916
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private a(JZ)V
    .locals 4

    const-string v0, "TP sd ty = "

    .line 305
    iget-object v1, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "state"

    .line 309
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 311
    new-instance v2, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v1, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3ee

    invoke-direct {v2, v3, v1}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , u = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bo : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 313
    iput-wide p1, v2, Lcom/mob/mcl/c/e;->c:J

    .line 314
    iget-object p1, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    invoke-virtual {p1, v2}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 316
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/h;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/h;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p6}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/h;ZLjava/lang/String;ILjava/lang/String;I)Z
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 803
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 806
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 809
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 810
    iget-object p2, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mcl/d/c;

    invoke-virtual {p2, p1, v0, v1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 812
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "determineDomain"

    const-string v1, "uniqueKey"

    const-string v2, "uniqueId"

    const-string v3, "domains"

    const/4 v4, 0x0

    .line 518
    :try_start_0
    iput-boolean v4, p0, Lcom/mob/mcl/c/h;->m:Z

    .line 519
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 520
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 521
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mob/mcl/c/h;->a:J

    .line 523
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    const-string v1, "tick"

    .line 524
    iget v2, p0, Lcom/mob/mcl/c/h;->e:I

    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mob/mcl/c/h;->e:I

    const-string v1, "globalSwitch"

    .line 525
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->g:Z

    const-string v1, "connectSwitch"

    .line 526
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->h:Z

    const-string v1, "forwardSwitch"

    .line 527
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->i:Z

    const-string v1, "bindRequestSwitch"

    .line 528
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->j:Z

    const-string v1, "wr"

    .line 529
    iget v3, p0, Lcom/mob/mcl/c/h;->f:I

    invoke-static {p1, v1, v3}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mob/mcl/c/h;->f:I

    .line 530
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 531
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 542
    :cond_5
    iget-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_6

    return v2

    :catchall_0
    move-exception p1

    .line 547
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_6
    return v4
.end method

.method private declared-synchronized a(ZLjava/lang/String;ILjava/lang/String;I)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    const-string v9, "TP register exp : "

    const-string v10, "Exception: "

    const-string v1, "TP rg domain : "

    monitor-enter p0

    const/4 v11, 0x0

    const/16 v12, 0x18

    .line 579
    :try_start_0
    iget-object v2, v7, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_3

    const/4 v2, 0x3

    if-ge v8, v2, :cond_3

    .line 580
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " count : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v13, 0x1

    move-object/from16 v14, p4

    move/from16 v15, p5

    .line 582
    :try_start_1
    invoke-virtual {v7, v0, v14, v15}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "type"

    .line 584
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type"

    .line 585
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_0

    const-string v3, "token"

    .line 586
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    iget-object v1, v7, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 588
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/b;->b()V

    .line 589
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP register success"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/mob/mcl/c/h;->m()V

    .line 591
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    monitor-exit p0

    return v13

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :try_start_2
    const-string v3, "domain"

    .line 593
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "domain"

    .line 594
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 595
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    const/4 v4, 0x2

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 596
    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 599
    :try_start_3
    iput-boolean v13, v7, Lcom/mob/mcl/c/h;->w:Z

    .line 600
    iget-object v0, v7, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    invoke-virtual {v0}, Lcom/mob/mcl/c/f;->a()V

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/mob/mcl/c/h;->m()V

    .line 602
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-static {v12}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    const-string v2, "Connection out of limit"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    monitor-exit p0

    return v11

    :catchall_0
    move-exception v0

    .line 608
    :try_start_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v8, 0x1

    .line 610
    iget-object v0, v7, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    if-nez p1, :cond_3

    const/4 v2, 0x0

    .line 611
    iget-object v0, v7, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    .line 615
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    const-string v1, "tcp_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iput-object v2, v7, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 618
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 621
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/mob/mcl/c/h;->m()V

    .line 622
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-static {v12}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 623
    monitor-exit p0

    return v11

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/mob/mcl/c/h;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    return-object p0
.end method

.method public static b()Lcom/mob/mcl/c/h;
    .locals 2

    .line 117
    sget-object v0, Lcom/mob/mcl/c/h;->n:Lcom/mob/mcl/c/h;

    if-nez v0, :cond_1

    .line 118
    const-class v0, Lcom/mob/mcl/c/h;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/h;->n:Lcom/mob/mcl/c/h;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lcom/mob/mcl/c/h;

    invoke-direct {v1}, Lcom/mob/mcl/c/h;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/h;->n:Lcom/mob/mcl/c/h;

    .line 122
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/h;->n:Lcom/mob/mcl/c/h;

    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    .line 950
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%16s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "0"

    .line 951
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 952
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 973
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 975
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 978
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 962
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x0

    .line 963
    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v1, "data"

    .line 964
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private b(JZ)V
    .locals 4

    const-string v0, "TP sd ty = "

    .line 337
    iget-object v1, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    if-eqz v1, :cond_0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "repeat"

    .line 341
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 343
    new-instance v2, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v1, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3ef

    invoke-direct {v2, v3, v1}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 344
    iput-wide p1, v2, Lcom/mob/mcl/c/e;->c:J

    .line 345
    iget-object v1, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    invoke-virtual {v1, v2}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    .line 346
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , u = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bo : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 348
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mob/mcl/c/h;)Lcom/mob/tools/utils/HashonHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/tools/utils/HashonHelper;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 945
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 946
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/mob/tools/utils/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appkey"

    .line 628
    iget-object v2, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v1, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apppkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pushId"

    .line 631
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guardId"

    .line 632
    iget-object v2, p0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    .line 635
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMpfo(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/mob/mcl/c/h$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/mob/mcl/c/h$8;-><init>(Lcom/mob/mcl/c/h;Ljava/util/HashMap;Lcom/mob/tools/utils/e;)V

    .line 636
    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 659
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 660
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 9

    const-string v0, ";"

    .line 501
    invoke-static {}, Lcom/mob/commons/aa;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 502
    invoke-static {}, Lcom/mob/commons/s;->a()Lcom/mob/commons/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/s;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "COMMON;"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 506
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/commons/MobProduct;

    const-string v7, "COMMON"

    .line 507
    invoke-interface {v6}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ","

    .line 508
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-interface {v6}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lcom/mob/commons/MobProduct;->getSdkver()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 1

    .line 996
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 999
    :cond_0
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1003
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mcl/c/h$3;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/h$3;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 1080
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mgs/impl/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 1083
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/mob/mcl/c/h;->u:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    if-eqz v0, :cond_1

    const-string v0, "expire"

    .line 792
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "workId"

    .line 793
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-direct {p0, v1, v0}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->u:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    invoke-interface {v0, p1}, Lcom/mob/mcl/MobMCL$ELPMessageListener;->messageReceived(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 940
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 941
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "TP rp : "

    const-string v1, "TP sd ty = "

    .line 275
    iget-object v2, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    if-eqz v2, :cond_3

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , bo = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , out = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 280
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    new-instance p3, Lcom/mob/mcl/c/e;

    invoke-direct {p3, p1}, Lcom/mob/mcl/c/e;-><init>(I)V

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v2, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    move-object p3, v1

    .line 285
    :goto_0
    iget-object p1, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    invoke-virtual {p1, p3}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    if-eqz p1, :cond_2

    int-to-long p2, p2

    .line 287
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v1}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 288
    iget p2, p1, Lcom/mob/mcl/c/e;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_1

    .line 289
    iget-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 290
    iget-object p1, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "TP rp : null"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 298
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 1
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

    const/16 v0, 0x2710

    .line 271
    invoke-virtual {p0, p1, v0, p2}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_1

    .line 251
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TP rg main = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , bo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , out = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const-string v0, ":"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/mob/mcl/c/f;->a(Ljava/net/SocketAddress;ZZI)V

    .line 254
    iget-object p1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 255
    new-instance p1, Lcom/mob/mcl/c/e;

    iget-object v0, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3e9

    invoke-direct {p1, v0, p2}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 256
    iget-wide v0, p0, Lcom/mob/mcl/c/h;->a:J

    iput-wide v0, p1, Lcom/mob/mcl/c/e;->c:J

    .line 257
    iget-object p2, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    invoke-virtual {p2, p1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    int-to-long p2, p3

    .line 259
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget p2, p1, Lcom/mob/mcl/c/e;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_0

    .line 261
    iget-object p2, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    iget-object p3, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 262
    iget-object p1, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "TP rp : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const-string v1, "TP tpHelper addBMListener: remove key = "

    const-string v2, "TP tpHelper addBMListener: bisType = "

    .line 161
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 163
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 166
    iget-object v0, v7, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 169
    :cond_0
    iget-object v1, v7, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, v7, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    :goto_0
    move-object v9, v1

    goto :goto_1

    .line 172
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    iget-object v2, v7, Lcom/mob/mcl/c/h;->v:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :goto_1
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP tpHelper addBMListener: has cached msg"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/g;->c()Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Map;

    const-string v1, "bisType"

    .line 183
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 186
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    goto :goto_3

    :cond_2
    move v13, v12

    :goto_3
    const-string v1, "workId"

    .line 188
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    const-string v1, "json"

    .line 189
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP tpHelper addBMListener: cachedBisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target bisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v13, v1, :cond_4

    .line 192
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 193
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mob/mcl/BusinessMessageListener;

    .line 196
    new-instance v6, Lcom/mob/mcl/c/h$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move v4, v13

    move-object v5, v14

    move-object/from16 p1, v0

    move-object v0, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h$1;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    move-object/from16 v0, p1

    goto :goto_4

    :cond_3
    move-object/from16 p1, v0

    .line 209
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TP tpHelper addBMListener: mark msg to rm. msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 210
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move-object/from16 p1, v0

    :goto_5
    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 214
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 216
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP tpHelper addBMListener: rm msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/c/g;->b(Ljava/util/Map;)V

    goto :goto_6

    .line 221
    :cond_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP tpHelper addBMListener: no cached msg"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 224
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "TP tpHelper addBMListener: error"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    return-void
.end method

.method public declared-synchronized a(ILcom/mob/tools/utils/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unavailable(global: "

    monitor-enter p0

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    new-instance v0, Lcom/mob/mcl/c/h$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/mcl/c/h$7;-><init>(Lcom/mob/mcl/c/h;ILcom/mob/tools/utils/e;)V

    invoke-direct {p0, v0}, Lcom/mob/mcl/c/h;->c(Lcom/mob/tools/utils/e;)V

    goto :goto_0

    .line 568
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", connect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->h:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", forceClose:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->w:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatus;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 571
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    .line 232
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 233
    iput-object p3, p0, Lcom/mob/mcl/c/h;->s:Ljava/lang/String;

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->g()V

    .line 236
    invoke-static {p1}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/c/h$4;

    invoke-direct {p2, p0}, Lcom/mob/mcl/c/h$4;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-static {p2}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    .line 246
    iget-object p1, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mcl/d/c;

    invoke-virtual {p1}, Lcom/mob/mcl/d/c;->a()V

    return-void
.end method

.method public a(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_1

    .line 378
    sget-object p1, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/mcl/c/h$5;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/h$5;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/mob/mcl/c/h;->u:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    return-void
.end method

.method public a(Lcom/mob/mcl/TcpStatus;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/mob/mcl/c/h;->C:Lcom/mob/mcl/TcpStatus;

    return-void
.end method

.method public a(Lcom/mob/mcl/TcpStatusListener;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/mob/mcl/c/h;->B:Lcom/mob/mcl/TcpStatusListener;

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;)V
    .locals 1

    .line 927
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "TP sessionOpened"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/e;)V
    .locals 15

    move-object v9, p0

    move-object/from16 v0, p2

    const-string v1, "targetPackage"

    const-string v2, "workId"

    const-string v3, "expire"

    const-string v4, "TP mg ty: "

    const-string v5, "TP msg push msgType: "

    .line 712
    :try_start_0
    iget-object v6, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v6, v9, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 716
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP received push msg, but send token is 0"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 719
    :cond_1
    iget-object v6, v9, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 720
    iget v6, v0, Lcom/mob/mcl/c/e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x2329

    const-string v8, "uniqueId"

    const/4 v10, 0x0

    const-string v11, "data"

    const/4 v12, 0x1

    if-ne v6, v7, :cond_7

    .line 721
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " body = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 722
    iget-wide v4, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v4, v5}, Lcom/mob/mcl/c/h;->a(J)Lcom/mob/mcl/c/c;

    move-result-object v13

    .line 723
    iget-object v1, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 724
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 725
    invoke-static {v1, v3, v10}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v5

    .line 726
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 727
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const-string v6, "needRepeat"

    .line 728
    invoke-static {v1, v6, v10}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v12, :cond_2

    move v14, v12

    goto :goto_0

    :cond_2
    move v14, v10

    :goto_0
    const-string v6, "type"

    .line 729
    invoke-static {v1, v6, v10}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v12, :cond_4

    const/4 v1, 0x2

    if-ne v6, v1, :cond_3

    goto :goto_1

    .line 743
    :cond_3
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    move-object v1, p0

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;IILjava/lang/String;Lcom/mob/mcl/c/c;)Z

    move-result v1

    if-eqz v14, :cond_a

    .line 745
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v2, v3, v1}, Lcom/mob/mcl/c/h;->b(JZ)V

    goto/16 :goto_2

    .line 731
    :cond_4
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 732
    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 734
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "msgType"

    .line 736
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    invoke-virtual {p0, v1}, Lcom/mob/mcl/c/h;->a(Landroid/os/Bundle;)I

    move-result v1

    if-ne v1, v12, :cond_5

    move v10, v12

    :cond_5
    if-eqz v14, :cond_6

    .line 739
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v10}, Lcom/mob/mcl/c/h;->b(JZ)V

    :cond_6
    return-void

    .line 750
    :cond_7
    iget v2, v0, Lcom/mob/mcl/c/e;->b:I

    const/16 v3, 0x232a

    if-ne v2, v3, :cond_8

    .line 751
    iget-object v0, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "domain"

    .line 752
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 754
    iput-boolean v12, v9, Lcom/mob/mcl/c/h;->m:Z

    .line 755
    new-instance v1, Lcom/mob/mcl/c/h$10;

    invoke-direct {v1, p0, v0}, Lcom/mob/mcl/c/h$10;-><init>(Lcom/mob/mcl/c/h;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mob/mcl/c/h;->c(Lcom/mob/tools/utils/e;)V

    goto/16 :goto_2

    .line 762
    :cond_8
    iget v2, v0, Lcom/mob/mcl/c/e;->b:I

    const/16 v3, 0x232c

    if-ne v2, v3, :cond_a

    .line 763
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 764
    iget-wide v4, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v4, v5}, Lcom/mob/mcl/c/h;->a(J)Lcom/mob/mcl/c/c;

    .line 765
    iget-object v2, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 766
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 767
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 768
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "logicTimeout"

    const/16 v6, 0x3e8

    .line 769
    invoke-static {v2, v5, v6}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v2

    .line 770
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 771
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 772
    invoke-virtual {v5, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-wide v6, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 774
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v1, v2}, Lcom/mob/mcl/a/a;->a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/a;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 776
    iget-object v1, v1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 777
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v12}, Lcom/mob/mcl/c/h;->a(JZ)V

    goto :goto_2

    .line 779
    :cond_9
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "TP apc fw rp mg is null"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 780
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v10}, Lcom/mob/mcl/c/h;->a(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 786
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Ljava/lang/Throwable;)V
    .locals 2

    .line 922
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TP exceptionCaught : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Z)V
    .locals 2

    .line 932
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TP sessionClosed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/b;->c()Z

    if-eqz p2, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/mob/mcl/c/h;->y:Lcom/mob/mgs/OnIdChangeListener;

    return-void
.end method

.method public a(Lcom/mob/tools/utils/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1388

    .line 553
    invoke-virtual {p0, v0, p1}, Lcom/mob/mcl/c/h;->a(ILcom/mob/tools/utils/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->y:Lcom/mob/mgs/OnIdChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/mob/mcl/c/h;->y:Lcom/mob/mgs/OnIdChangeListener;

    iget-object v1, p0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mob/mgs/OnIdChangeListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    iput-object p1, p0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    .line 686
    iput-wide p2, p0, Lcom/mob/mcl/c/h;->l:J

    .line 687
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p1

    const-string p2, "suid"

    iget-object p3, p0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p1

    const-string p2, "create_suid_time"

    iget-wide v0, p0, Lcom/mob/mcl/c/h;->l:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/mob/commons/ab;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(II)Z
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_3

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0, v0, p1, v1}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    add-int/2addr p2, v0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->a(II)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3e8

    add-int/2addr p2, v0

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->a(II)Z

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(JLjava/lang/String;IILjava/lang/String;)Z
    .locals 6

    .line 817
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 820
    invoke-direct/range {v0 .. v5}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 822
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(JLjava/lang/String;IILjava/lang/String;Lcom/mob/mcl/c/c;)Z
    .locals 12

    move-object v9, p0

    move-object v0, p3

    move/from16 v1, p4

    .line 832
    :try_start_0
    invoke-direct {p0, p3, v1}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 839
    :cond_0
    sget-object v10, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Lcom/mob/mcl/c/h$11;

    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mob/mcl/c/h$11;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/c/c;JLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 864
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    .line 404
    new-instance v1, Lcom/mob/mcl/c/h$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/mob/mcl/c/h$6;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessCallBack;Z)V

    const/4 p1, 0x0

    invoke-static {p1, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public b(Lcom/mob/mcl/TcpStatus;)V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/mob/mcl/c/h;->B:Lcom/mob/mcl/TcpStatusListener;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/mob/mcl/c/h;->C:Lcom/mob/mcl/TcpStatus;

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/mob/mcl/TcpStatusListener;->onStatus(Lcom/mob/mcl/TcpStatus;)V

    const/4 p1, 0x0

    .line 1094
    iput-object p1, p0, Lcom/mob/mcl/c/h;->C:Lcom/mob/mcl/TcpStatus;

    :cond_1
    return-void
.end method

.method public b(Lcom/mob/mcl/TcpStatusListener;)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/mob/mcl/c/h;->B:Lcom/mob/mcl/TcpStatusListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1074
    iput-object p1, p0, Lcom/mob/mcl/c/h;->B:Lcom/mob/mcl/TcpStatusListener;

    :cond_0
    return-void
.end method

.method public b(Lcom/mob/tools/utils/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 692
    new-instance v0, Lcom/mob/mcl/c/h$9;

    invoke-direct {v0, p0, p1}, Lcom/mob/mcl/c/h$9;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/tools/utils/e;)V

    invoke-direct {p0, v0}, Lcom/mob/mcl/c/h;->c(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Req failed: "

    const-string v1, "[Response]TP url = "

    const-string v2, "\nheaders = null\nvalues = "

    const-string v3, "[Request]TP url = "

    const/4 v4, 0x1

    .line 1026
    :try_start_0
    new-instance v5, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 1027
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v6}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v7, 0x7d0

    .line 1028
    iput v7, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const/16 v7, 0x1388

    .line 1029
    iput v7, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 1030
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "appkey"

    .line 1031
    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "pkg"

    .line 1032
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "duidOld"

    .line 1033
    invoke-virtual {v7, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "duidNew"

    .line 1034
    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "appVer"

    .line 1035
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getAppVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "plat"

    .line 1036
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPlatformCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v9

    const-string v10, "tcig"

    invoke-virtual {v9, v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tcp/push/pbsd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1038
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1039
    invoke-virtual {v5, v8, v7, v2, v6}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nresp = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 1041
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1042
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "code"

    .line 1043
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "200"

    .line 1044
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    :cond_1
    :goto_0
    iput v4, p0, Lcom/mob/mcl/c/h;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1051
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 1053
    iget v1, p0, Lcom/mob/mcl/c/h;->z:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 1055
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1057
    :catch_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 1059
    :goto_1
    iget v0, p0, Lcom/mob/mcl/c/h;->z:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mob/mcl/c/h;->z:I

    .line 1060
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1063
    :cond_2
    iput v4, p0, Lcom/mob/mcl/c/h;->z:I

    :goto_2
    return-void
.end method

.method public c()Z
    .locals 6

    .line 416
    iget-object v0, p0, Lcom/mob/mcl/c/h;->q:Lcom/mob/mcl/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/mob/mcl/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 13

    const-string v0, "use_config"

    const-string v1, "tcp_config"

    const-string v2, "requestTimes"

    const-string v3, "TP cf url : "

    const-string v4, "TP cf cc : "

    .line 436
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    move-result v5

    .line 437
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TP cf, main p: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v5, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v5, p0, Lcom/mob/mcl/c/h;->s:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/mob/mcl/c/h;->t:Landroid/content/Context;

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 446
    :try_start_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/mob/commons/ab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 448
    invoke-static {v7}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 449
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 451
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 452
    instance-of v10, v9, Ljava/lang/Long;

    if-eqz v10, :cond_2

    .line 453
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    .line 454
    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_3

    .line 455
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    goto :goto_0

    :cond_3
    const-wide/16 v9, 0x0

    :goto_0
    const-wide/32 v11, 0x5265c00

    add-long/2addr v9, v11

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 458
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v9

    invoke-direct {v9, v8}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/mob/commons/ab;->b(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 459
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    .line 466
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_4
    :try_start_1
    const-string v4, "sti"

    .line 469
    invoke-static {v4, v6}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_5

    .line 472
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 473
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "code"

    const/16 v7, 0xc8

    .line 474
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "data"

    .line 475
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 477
    :cond_5
    new-instance v4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v4}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v7, 0x2710

    .line 478
    iput v7, v4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v7, 0x1388

    .line 479
    iput v7, v4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 481
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "appkey"

    .line 482
    iget-object v9, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "pushId"

    .line 483
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "products"

    .line 484
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v9

    const-string v10, "tcig"

    invoke-virtual {v9, v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tcp/config/init"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 486
    iget-object v9, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {v9, v8, v7, v6, v4}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v4

    .line 487
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " -> rp : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 488
    invoke-static {v4}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 490
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-direct {v2, v3}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 492
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Z)V

    .line 493
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 496
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    .line 442
    :cond_7
    :goto_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP mcl has not been initialized"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 6

    .line 668
    iget-object v0, p0, Lcom/mob/mcl/c/h;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/mob/mcl/c/h;->l:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 669
    :cond_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    const-string v3, "suid"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/mob/commons/ab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v3

    const-string v4, "create_suid_time"

    invoke-virtual {v3, v4, v1, v2}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v3

    .line 671
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 672
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    cmp-long v1, v3, v1

    if-gtz v1, :cond_2

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 677
    :cond_2
    invoke-virtual {p0, v0, v3, v4}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 956
    iget-object v3, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "%16s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "0"

    .line 957
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 958
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
