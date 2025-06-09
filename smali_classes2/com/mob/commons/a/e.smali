.class public Lcom/mob/commons/a/e;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v1, "l"

    const-wide/16 v2, 0x0

    const-string v0, "004h7fkGek"

    .line 25
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x15180

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "l"

    invoke-static {v7, v0}, Lcom/mob/commons/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/e;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mob/commons/a/e;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 50
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/e;->a(Ljava/util/ArrayList;I)V

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/e;->a(Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMcdi()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMbcdi()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/16 v3, 0x1e

    .line 61
    invoke-virtual {v0, v3, v1, v2, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getPosCommForce(IIZZ)Lcom/mob/tools/utils/DH$RequestBuilder;

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    .line 64
    invoke-virtual {v0, v1, v3, v2, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getPosCommForce(IIZZ)Lcom/mob/tools/utils/DH$RequestBuilder;

    .line 66
    :goto_0
    new-instance v1, Lcom/mob/commons/a/e$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/mob/commons/a/e$2;-><init>(Lcom/mob/commons/a/e;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    const-string v1, "key_lgwst"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "036ef.edekelejedemZkg.ekegejgjgjejelFfWemfeglgefhjehjeihgffhdffeifmgdgegdhj"

    .line 31
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "036efNedekelejedemZkg^ekegejgjgjejelHf9emgefefehjfmfmeihgffhdffeifmgdgegdhj"

    .line 32
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 35
    new-instance v0, Lcom/mob/commons/a/e$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/e$1;-><init>(Lcom/mob/commons/a/e;)V

    invoke-static {v0}, Lcom/mob/commons/v;->a(Lcom/mob/tools/utils/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/mob/commons/a/e;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
