.class public Lcom/mob/commons/a/n;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 10

    const-string v0, "002Gefch"

    .line 22
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v1, "005Hefchdi7ci"

    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0xe10

    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/a/n;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/n;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mob/commons/a/n;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMwfo()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMwlfo()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/a/n$2;

    invoke-direct {v1, p0}, Lcom/mob/commons/a/n$2;-><init>(Lcom/mob/commons/a/n;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mob/commons/a/n;->m()V

    return-void
.end method

.method protected c()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/mob/tools/utils/k;->a()Lcom/mob/tools/utils/k;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mob/commons/a/n$1;

    invoke-direct {v2, p0}, Lcom/mob/commons/a/n$1;-><init>(Lcom/mob/commons/a/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/k;->a(Ljava/lang/String;Lcom/mob/tools/utils/k$a;)V

    return-void
.end method
