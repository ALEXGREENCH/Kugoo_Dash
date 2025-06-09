.class public Lcom/mob/commons/a/h;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "003fii"

    .line 28
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/a/h;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/h;Ljava/util/ArrayList;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/mob/commons/a/h;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "004fGfeQih"

    .line 84
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ALSAMT"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mob/commons/a/h;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p1

    sget-object v0, Lcom/mob/commons/ab;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mob/commons/ab;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private m()Z
    .locals 1

    const-string v0, "003fii"

    .line 36
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private n()Z
    .locals 1

    const-string v0, "002%fk,g"

    .line 40
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 1

    const-string v0, "0023fiRg"

    .line 44
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 48
    invoke-direct {p0}, Lcom/mob/commons/a/h;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    invoke-direct {p0}, Lcom/mob/commons/a/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/h;->o()Z

    move-result v0

    .line 53
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "004f[hk[lf"

    .line 54
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x278d00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mob/commons/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 55
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v4

    sget-object v5, Lcom/mob/commons/ab;->c:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 56
    invoke-static {v0, v1, v4, v5}, Lcom/mob/commons/v;->a(JJ)Z

    move-result v6

    .line 59
    iget-object v7, p0, Lcom/mob/commons/a/h;->b:Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mob/commons/a/h;->b:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mob/commons/a/h;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    :goto_1
    if-nez v8, :cond_4

    if-eqz v7, :cond_5

    .line 64
    :cond_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Lcom/mob/tools/utils/DH$RequestBuilder;->getIAForce(ZZ)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/a/h$1;

    invoke-direct {v1, p0, v8}, Lcom/mob/commons/a/h$1;-><init>(Lcom/mob/commons/a/h;Z)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    :cond_5
    return-void
.end method

.method protected e()Z
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/mob/commons/a/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/commons/a/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected l()J
    .locals 9

    const-wide/16 v0, 0x0

    .line 92
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 94
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 97
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 98
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 99
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 100
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sub-long/2addr v7, v3

    const v3, 0x3a980

    .line 101
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v7, v2

    const-wide/16 v2, 0x3e8

    .line 102
    div-long v4, v7, v2

    rem-long/2addr v7, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    int-to-long v0, v6

    add-long/2addr v4, v0

    return-wide v4

    :catchall_0
    move-exception v2

    .line 105
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-wide v0
.end method
