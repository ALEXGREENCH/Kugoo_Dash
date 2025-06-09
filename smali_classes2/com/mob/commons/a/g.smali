.class public Lcom/mob/commons/a/g;
.super Lcom/mob/commons/a/c;


# static fields
.field private static c:Lcom/mob/commons/k;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "014MehXf ecdhHdci0diddWfYdhVg[dkej"

    .line 21
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const-string v0, "002Yffdi"

    .line 25
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v0, "005<ffdiej1dj"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    return-void
.end method

.method private a(JJ)V
    .locals 3

    .line 76
    :try_start_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/a/g;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/ab;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/mob/commons/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 84
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(J)V
    .locals 7

    .line 65
    invoke-static {}, Lcom/mob/commons/l;->a()Lcom/mob/commons/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/mob/commons/a/g;

    invoke-direct {v0}, Lcom/mob/commons/a/g;-><init>()V

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/mob/commons/a/g;->a(Z)Lcom/mob/commons/a/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mob/commons/a/c;->b(Z)Lcom/mob/commons/a/c;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Long;

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v4}, Lcom/mob/commons/a/c;->a(Ljava/lang/Object;)Lcom/mob/commons/a/c;

    .line 69
    invoke-static {}, Lcom/mob/commons/a/d;->a()Lcom/mob/commons/a/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mob/commons/a/g;->l()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;JI)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 7

    .line 91
    :try_start_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/a/g;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/ab;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "005Qdg%eiYdiBg"

    .line 99
    invoke-static {v6}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "008<djdg eiEdidf=f0fi"

    .line 100
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BKIOMT"

    .line 101
    invoke-virtual {p0, v1, v3}, Lcom/mob/commons/a/g;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/a/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/commons/ab;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 107
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private static declared-synchronized n()Z
    .locals 3

    const-class v0, Lcom/mob/commons/a/g;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/g;->c:Lcom/mob/commons/k;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/mob/commons/a/g$1;

    invoke-direct {v1}, Lcom/mob/commons/a/g$1;-><init>()V

    sput-object v1, Lcom/mob/commons/a/g;->c:Lcom/mob/commons/k;

    .line 145
    invoke-static {}, Lcom/mob/commons/l;->a()Lcom/mob/commons/l;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/a/g;->c:Lcom/mob/commons/k;

    invoke-virtual {v1, v2}, Lcom/mob/commons/l;->a(Lcom/mob/commons/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 34
    invoke-virtual {p0}, Lcom/mob/commons/a/g;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    iget-object v0, p0, Lcom/mob/commons/a/g;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 36
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 37
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    .line 39
    array-length v6, v0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    .line 43
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-nez v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/mob/commons/a/g;->m()V

    .line 49
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/mob/commons/a/g;->a(JJ)V

    .line 50
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/g;->b(J)V

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0x1

    cmp-long v0, v1, v8

    if-eqz v0, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x2

    cmp-long v0, v1, v8

    if-nez v0, :cond_4

    .line 57
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/mob/commons/a/g;->a(JJ)V

    .line 58
    invoke-direct {p0}, Lcom/mob/commons/a/g;->m()V

    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/mob/commons/a/g;->a(JJ)V

    .line 54
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/g;->b(J)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected c()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/mob/commons/a/g;->n()Z

    return-void
.end method
