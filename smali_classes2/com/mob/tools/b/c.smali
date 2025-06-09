.class public Lcom/mob/tools/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/b/c;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/mob/tools/b/a;

.field private volatile d:Lcom/mob/tools/b/a;

.field private volatile e:Lcom/mob/tools/b/a;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mob/tools/b/c;

    invoke-direct {v0}, Lcom/mob/tools/b/c;-><init>()V

    sput-object v0, Lcom/mob/tools/b/c;->a:Lcom/mob/tools/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/tools/b/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/b/c;
    .locals 1

    .line 17
    sget-object v0, Lcom/mob/tools/b/c;->a:Lcom/mob/tools/b/c;

    iget-object v0, v0, Lcom/mob/tools/b/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 18
    sget-object v0, Lcom/mob/tools/b/c;->a:Lcom/mob/tools/b/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/mob/tools/b/c;->b:Landroid/content/Context;

    .line 20
    :cond_0
    sget-object p0, Lcom/mob/tools/b/c;->a:Lcom/mob/tools/b/c;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mob/tools/b/c;->b()V

    .line 25
    iget-object v0, p0, Lcom/mob/tools/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/d;->a(Landroid/content/Context;)Lcom/mob/tools/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/d;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/mob/tools/b/a;)Z
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mob/tools/b/c;->e:Lcom/mob/tools/b/a;

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/mob/tools/b/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    .line 31
    invoke-virtual {p0}, Lcom/mob/tools/b/c;->c()Lcom/mob/tools/b/a;

    .line 33
    iget-object v0, p0, Lcom/mob/tools/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    :cond_0
    return-void
.end method

.method public c()Lcom/mob/tools/b/a;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/mob/tools/b/c;->c:Lcom/mob/tools/b/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/mob/tools/b/i;

    iget-object v1, p0, Lcom/mob/tools/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/b/c;->c:Lcom/mob/tools/b/a;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/c;->c:Lcom/mob/tools/b/a;

    return-object v0
.end method

.method public d()Lcom/mob/tools/b/a;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/mob/tools/b/c;->d:Lcom/mob/tools/b/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/mob/tools/b/g;

    iget-object v1, p0, Lcom/mob/tools/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/b/c;->d:Lcom/mob/tools/b/a;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/c;->d:Lcom/mob/tools/b/a;

    return-object v0
.end method

.method public e()Lcom/mob/tools/b/a;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mob/tools/b/c;->e:Lcom/mob/tools/b/a;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/mob/tools/b/c;->c()Lcom/mob/tools/b/a;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/c;->e:Lcom/mob/tools/b/a;

    return-object v0
.end method
