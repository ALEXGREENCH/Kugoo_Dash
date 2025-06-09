.class public Lcom/mob/commons/a/a;
.super Lcom/mob/commons/a/c;


# static fields
.field private static volatile c:J

.field private static volatile d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const-string v0, "002fk"

    .line 16
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v0, "005fkEgl:fl"

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x384

    const-wide/16 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    .line 17
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mob/commons/a/a;->c:J

    .line 19
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/ab;->f()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    sget-object v1, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const-string v3, "008if!fiGgej2hf1k"

    .line 63
    invoke-static {v3}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "008!fefiflZfk]fkfmLg"

    .line 64
    invoke-static {v3}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "ARSTAMT"

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/mob/commons/a/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 69
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/ab;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/ab;->a(Ljava/lang/String;J)V

    .line 71
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    :cond_2
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/commons/ab;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 77
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    .line 24
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    .line 28
    :cond_0
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/mob/commons/a/a;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/mob/commons/a/a;->m()V

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mob/commons/a/a;->c:J

    sub-long/2addr v0, v2

    .line 38
    sget-object v2, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    sget-wide v3, Lcom/mob/commons/a/a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/commons/ab;->a(Ljava/util/HashMap;)V

    .line 42
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/ab;->f:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 44
    invoke-virtual {p0}, Lcom/mob/commons/a/a;->l()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 46
    invoke-direct {p0}, Lcom/mob/commons/a/a;->m()V

    :cond_3
    return-void
.end method

.method protected b()V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/mob/commons/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/mob/commons/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const-wide/32 v0, 0x93a80

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p0, v3, v4}, Lcom/mob/commons/a/a;->a(J)Lcom/mob/commons/a/c;

    :cond_0
    return-void
.end method
