.class Lcom/mob/tools/utils/MobPersistence$i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mob/tools/utils/MobPersistence$i$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:B

.field private c:[B

.field private d:J

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    iput p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->a:I

    const-wide/16 v0, 0x29

    int-to-long v2, p1

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x400

    add-long/2addr v2, v0

    .line 1218
    iput-wide v2, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->g:J

    return-void
.end method

.method private a(B)V
    .locals 0

    .line 1238
    iput-byte p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->b:B

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 1254
    iput-wide p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->d:J

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i$a;B)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(B)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i$a;J)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i$a;[B)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 1246
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->c:[B

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$i$a;)I
    .locals 0

    .line 1195
    iget p0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->a:I

    return p0
.end method

.method private b(J)V
    .locals 0

    .line 1262
    iput-wide p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->e:J

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$i$a;J)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/MobPersistence$i$a;->b(J)V

    return-void
.end method

.method static synthetic c(Lcom/mob/tools/utils/MobPersistence$i$a;)J
    .locals 2

    .line 1195
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->g:J

    return-wide v0
.end method

.method private c(J)V
    .locals 0

    .line 1270
    iput-wide p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->f:J

    return-void
.end method

.method static synthetic c(Lcom/mob/tools/utils/MobPersistence$i$a;J)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(J)V

    return-void
.end method

.method static synthetic d(Lcom/mob/tools/utils/MobPersistence$i$a;)J
    .locals 2

    .line 1195
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/mob/tools/utils/MobPersistence$i$a;J)J
    .locals 0

    .line 1195
    iput-wide p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->d:J

    return-wide p1
.end method

.method static synthetic e(Lcom/mob/tools/utils/MobPersistence$i$a;)J
    .locals 2

    .line 1195
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->c:[B

    return-object p0
.end method

.method static synthetic g(Lcom/mob/tools/utils/MobPersistence$i$a;)B
    .locals 0

    .line 1195
    iget-byte p0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->b:B

    return p0
.end method

.method static synthetic h(Lcom/mob/tools/utils/MobPersistence$i$a;)J
    .locals 2

    .line 1195
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/MobPersistence$i$a;)I
    .locals 4

    .line 1297
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 1226
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->g:J

    return-wide v0
.end method

.method public a(B[BJJ)V
    .locals 0

    .line 1281
    iput-byte p1, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->b:B

    .line 1282
    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->c:[B

    .line 1283
    iput-wide p3, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->e:J

    .line 1284
    iput-wide p5, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->f:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 1250
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->d:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1258
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->e:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1195
    check-cast p1, Lcom/mob/tools/utils/MobPersistence$i$a;

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(Lcom/mob/tools/utils/MobPersistence$i$a;)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 1266
    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->f:J

    return-wide v0
.end method

.method public e()Z
    .locals 6

    .line 1274
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i$a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i$a;->d()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 1288
    iput-byte v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->b:B

    const/4 v0, 0x0

    .line 1289
    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->c:[B

    const-wide/16 v0, -0x1

    .line 1290
    iput-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->f:J

    const-wide/16 v0, 0x0

    .line 1291
    iput-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->d:J

    .line 1292
    iput-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i$a;->e:J

    return-void
.end method
