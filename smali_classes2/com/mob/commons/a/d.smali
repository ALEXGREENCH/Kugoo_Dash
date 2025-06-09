.class public Lcom/mob/commons/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile a:Lcom/mob/commons/a/d;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mob/commons/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/commons/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a()Lcom/mob/commons/a/d;
    .locals 2

    .line 28
    sget-object v0, Lcom/mob/commons/a/d;->a:Lcom/mob/commons/a/d;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/mob/commons/y;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/d;->a:Lcom/mob/commons/a/d;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/mob/commons/a/d;

    invoke-direct {v1}, Lcom/mob/commons/a/d;-><init>()V

    sput-object v1, Lcom/mob/commons/a/d;->a:Lcom/mob/commons/a/d;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/a/d;->a:Lcom/mob/commons/a/d;

    return-object v0
.end method

.method private c()J
    .locals 2

    const-string v0, "0034djWji"

    .line 122
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/mob/commons/a/c;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/commons/a/c;",
            ">(TT;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 77
    iget-object p2, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object p2, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/a/c;

    .line 67
    invoke-virtual {p1}, Lcom/mob/commons/a/c;->k()I

    move-result v1

    invoke-virtual {v0}, Lcom/mob/commons/a/c;->k()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/mob/commons/a/c;JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/mob/commons/a/c;->h()Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/mob/commons/a/l;->a(JLcom/mob/commons/a/c;I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/mob/commons/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/mob/commons/a/a;

    invoke-direct {v0}, Lcom/mob/commons/a/a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 42
    new-instance v0, Lcom/mob/commons/a/b;

    invoke-direct {v0}, Lcom/mob/commons/a/b;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 43
    new-instance v0, Lcom/mob/commons/a/e;

    invoke-direct {v0}, Lcom/mob/commons/a/e;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 44
    new-instance v0, Lcom/mob/commons/a/f;

    invoke-direct {v0}, Lcom/mob/commons/a/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 45
    new-instance v0, Lcom/mob/commons/a/k;

    invoke-direct {v0}, Lcom/mob/commons/a/k;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 46
    new-instance v0, Lcom/mob/commons/a/g;

    invoke-direct {v0}, Lcom/mob/commons/a/g;-><init>()V

    .line 47
    invoke-virtual {v0, v2}, Lcom/mob/commons/a/g;->a(Z)Lcom/mob/commons/a/c;

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 49
    new-instance v0, Lcom/mob/commons/a/h;

    invoke-direct {v0}, Lcom/mob/commons/a/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 50
    new-instance v0, Lcom/mob/commons/a/j;

    invoke-direct {v0}, Lcom/mob/commons/a/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 51
    new-instance v0, Lcom/mob/commons/a/i;

    invoke-direct {v0}, Lcom/mob/commons/a/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 52
    new-instance v0, Lcom/mob/commons/a/m;

    invoke-direct {v0}, Lcom/mob/commons/a/m;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 53
    new-instance v0, Lcom/mob/commons/a/n;

    invoke-direct {v0}, Lcom/mob/commons/a/n;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 54
    new-instance v0, Lcom/mob/commons/a/o;

    invoke-direct {v0}, Lcom/mob/commons/a/o;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;I)V

    .line 55
    sget-object v0, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 96
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mob/commons/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/mob/commons/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/commons/a/c;

    .line 103
    invoke-virtual {v3}, Lcom/mob/commons/a/c;->j()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 104
    invoke-virtual {v3}, Lcom/mob/commons/a/c;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    :cond_1
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/mob/commons/a/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/mob/commons/a/l;->d(JLjava/lang/Runnable;)Z

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2, p0}, Lcom/mob/commons/a/l;->d(JLjava/lang/Runnable;)Z

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/mob/commons/a/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/mob/commons/a/l;->d(JLjava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
