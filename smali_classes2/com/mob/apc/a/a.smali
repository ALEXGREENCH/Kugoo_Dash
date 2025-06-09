.class public Lcom/mob/apc/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mob/MobACService;

.field private volatile b:Z

.field private final c:Lcom/mob/apc/a/d;


# direct methods
.method public constructor <init>(Lcom/mob/MobACService;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mob/apc/a/a;->b:Z

    .line 36
    iput-object p1, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    .line 37
    new-instance p1, Lcom/mob/apc/a/a$1;

    invoke-direct {p1, p0}, Lcom/mob/apc/a/a$1;-><init>(Lcom/mob/apc/a/a;)V

    iput-object p1, p0, Lcom/mob/apc/a/a;->c:Lcom/mob/apc/a/d;

    return-void
.end method

.method static synthetic a(Lcom/mob/apc/a/a;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/mob/apc/a/a;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/mob/apc/a/a;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/mob/apc/a/a;->b:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/MobACService;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/mob/apc/a/a;->c:Lcom/mob/apc/a/d;

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 109
    :try_start_0
    iput-boolean v0, p0, Lcom/mob/apc/a/a;->b:Z

    .line 110
    iget-object v0, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    invoke-virtual {v0}, Lcom/mob/MobACService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/apc/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 112
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/mob/apc/a/a;->b:Z

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mob/apc/a/a;->a:Lcom/mob/MobACService;

    invoke-virtual {v0, p1}, Lcom/mob/MobACService;->a(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
