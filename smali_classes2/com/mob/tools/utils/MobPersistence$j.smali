.class public Lcom/mob/tools/utils/MobPersistence$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:J

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$j;->a:Ljava/lang/String;

    .line 1318
    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$j;->b:Ljava/lang/Object;

    .line 1319
    iput-wide p3, p0, Lcom/mob/tools/utils/MobPersistence$j;->c:J

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$j;)Ljava/lang/String;
    .locals 0

    .line 1306
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$j;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$j;[B)V
    .locals 0

    .line 1306
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$j;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 1355
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$j;->d:[B

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$j;)[B
    .locals 0

    .line 1306
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$j;->d:[B

    return-object p0
.end method

.method static synthetic c(Lcom/mob/tools/utils/MobPersistence$j;)J
    .locals 2

    .line 1306
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$j;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/mob/tools/utils/MobPersistence$j;)[B
    .locals 0

    .line 1306
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$j;->f()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/mob/tools/utils/MobPersistence$j;)Ljava/lang/Object;
    .locals 0

    .line 1306
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$j;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private f()[B
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$j;->d:[B

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1343
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$j;->c:J

    return-wide v0
.end method

.method public e()Z
    .locals 6

    .line 1359
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$j;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1362
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$j;->d()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
