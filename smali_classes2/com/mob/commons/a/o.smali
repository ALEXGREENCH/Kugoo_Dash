.class public Lcom/mob/commons/a/o;
.super Lcom/mob/commons/a/c;


# instance fields
.field private volatile c:J

.field private volatile d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 12

    const-string v0, "002?hi(i"

    .line 26
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v1, "004.hiNiThkfl"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    .line 21
    iput-wide v10, p0, Lcom/mob/commons/a/o;->c:J

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mob/commons/a/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/o;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/mob/commons/a/o;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/mob/commons/a/o;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mob/commons/a/o;->m()V

    return-void
.end method

.method static synthetic c(Lcom/mob/commons/a/o;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mob/commons/a/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/commons/a/o;->c:J

    .line 69
    new-instance v0, Lcom/mob/commons/a/o$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/o$2;-><init>(Lcom/mob/commons/a/o;)V

    invoke-static {v0}, Lcom/mob/commons/v;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/mob/commons/a/o;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mob/commons/a/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mob/commons/a/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/o;->m()V

    return-void
.end method

.method protected c()V
    .locals 3

    .line 31
    invoke-static {}, Lcom/mob/tools/utils/k;->a()Lcom/mob/tools/utils/k;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mob/commons/a/o$1;

    invoke-direct {v2, p0}, Lcom/mob/commons/a/o$1;-><init>(Lcom/mob/commons/a/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/k;->a(Ljava/lang/String;Lcom/mob/tools/utils/k$a;)V

    return-void
.end method
