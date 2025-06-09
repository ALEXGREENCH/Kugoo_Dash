.class Lcom/mob/commons/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/q$1;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/mob/commons/q$a;-><init>()V

    return-void
.end method

.method private b(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 317
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[LGSM] SLR: onL"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 320
    invoke-static {}, Lcom/mob/commons/q;->a()Lcom/mob/commons/q;

    move-result-object v0

    new-instance v8, Lcom/mob/commons/q$a$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p3

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mob/commons/q$a$1;-><init>(Lcom/mob/commons/q$a;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v8}, Lcom/mob/commons/q;->a(Lcom/mob/commons/q;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    invoke-static {}, Lcom/mob/commons/x;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string p2, "[LGSM] SLR: U"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 342
    sget-object p1, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/mob/commons/q$c;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/mob/commons/q$c;-><init>(Lcom/mob/commons/q$1;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/mob/commons/q$a;
    .locals 0

    .line 300
    iput p1, p0, Lcom/mob/commons/q$a;->a:I

    .line 301
    iput p2, p0, Lcom/mob/commons/q$a;->b:I

    .line 302
    iput-object p3, p0, Lcom/mob/commons/q$a;->c:Ljava/lang/String;

    .line 303
    iput-object p4, p0, Lcom/mob/commons/q$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 310
    :try_start_0
    iget v0, p0, Lcom/mob/commons/q$a;->a:I

    iget v1, p0, Lcom/mob/commons/q$a;->b:I

    iget-object v2, p0, Lcom/mob/commons/q$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/commons/q$a;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mob/commons/q$a;->b(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 312
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
