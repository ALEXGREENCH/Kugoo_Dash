.class public Lcom/mob/tools/utils/MobPools$SimplePool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/MobPools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/utils/MobPools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 28
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->a:[Ljava/lang/Object;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 62
    :goto_0
    iget v2, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->b:I

    if-ge v1, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 37
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->a:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 38
    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    .line 39
    iput v0, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v0

    .line 42
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPools$SimplePool;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget v0, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->b:I

    iget-object v1, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 54
    aput-object p1, v1, v0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 55
    iput v0, p0, Lcom/mob/tools/utils/MobPools$SimplePool;->b:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
