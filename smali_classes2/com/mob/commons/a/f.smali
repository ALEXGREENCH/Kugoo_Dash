.class public Lcom/mob/commons/a/f;
.super Lcom/mob/commons/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/a/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 10

    const-string v0, "002Ofm%i"

    .line 28
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v1, "006;fm;i-gl+flj"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x3c

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 58
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getPosCommForce(IIZZ)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMbcdi()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMcdi()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/a/f$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/a/f$1;-><init>(Lcom/mob/commons/a/f;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/mob/commons/a/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[cl] paramObj not null"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 40
    iget-object v0, p0, Lcom/mob/commons/a/f;->b:Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0, v1}, Lcom/mob/commons/a/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "O_LCMT"

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/mob/commons/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/f;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected c()V
    .locals 0

    .line 33
    invoke-static {}, Lcom/mob/commons/a/f$a;->a()Lcom/mob/commons/a/f$a;

    return-void
.end method
