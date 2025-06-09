.class public Lcom/mob/commons/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static volatile d:Lcom/mob/commons/a/f$a;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mob/commons/a/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/a/f$a$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/a/f$a$1;-><init>(Lcom/mob/commons/a/f$a;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/f;->a(Lcom/mob/tools/utils/f$a;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/f$a;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/mob/commons/a/f$a;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/mob/commons/a/f$a;J)J
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/mob/commons/a/f$a;->a:J

    return-wide p1
.end method

.method public static a()Lcom/mob/commons/a/f$a;
    .locals 2

    .line 132
    sget-object v0, Lcom/mob/commons/a/f$a;->d:Lcom/mob/commons/a/f$a;

    if-nez v0, :cond_1

    .line 133
    const-class v0, Lcom/mob/commons/a/f$a;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/f$a;->d:Lcom/mob/commons/a/f$a;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/mob/commons/a/f$a;

    invoke-direct {v1}, Lcom/mob/commons/a/f$a;-><init>()V

    sput-object v1, Lcom/mob/commons/a/f$a;->d:Lcom/mob/commons/a/f$a;

    .line 137
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 139
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/a/f$a;->d:Lcom/mob/commons/a/f$a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/mob/commons/a/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    return-void
.end method

.method static synthetic b(Lcom/mob/commons/a/f$a;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/mob/commons/a/f$a;->b()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/mob/commons/a/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/commons/a/f$a;->b:J

    sub-long/2addr v0, v2

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gpdi"

    invoke-static {v3, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/mob/commons/a/f$a;->d()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mob/commons/a/f$a;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/mob/commons/a/f$a;->c()V

    return-void
.end method

.method private d()V
    .locals 6

    .line 176
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/f;->c()Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/mob/commons/a/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mob/commons/a/f$a;->b:J

    .line 179
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/f;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    new-instance v2, Lcom/mob/tools/b/h$a;

    invoke-direct {v2, v0}, Lcom/mob/tools/b/h$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/mob/tools/b/h$a;->a(Ljava/lang/Object;)F

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "gped"

    const/high16 v3, 0x41200000    # 10.0f

    .line 186
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 187
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "[cl] cur != las"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 189
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/f;->a(Ljava/lang/Object;)V

    .line 190
    new-instance v1, Lcom/mob/commons/a/f;

    invoke-direct {v1}, Lcom/mob/commons/a/f;-><init>()V

    const/4 v2, 0x1

    .line 191
    invoke-virtual {v1, v2}, Lcom/mob/commons/a/f;->a(Z)Lcom/mob/commons/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/commons/a/c;->a(Ljava/lang/Object;)Lcom/mob/commons/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mob/commons/a/c;->b(Z)Lcom/mob/commons/a/c;

    .line 192
    invoke-static {}, Lcom/mob/commons/a/d;->a()Lcom/mob/commons/a/d;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 195
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
