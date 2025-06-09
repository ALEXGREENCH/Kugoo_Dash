.class public Lcom/mob/commons/b/j;
.super Lcom/mob/commons/b/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "023cDdkdfdlgddgdidldc5f:dddi=cf]didcfiGfGdjdddiWcf"

    .line 18
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "039c_dkdfdlgddgdidldcOfDdddiGcfCdidcfi2fAdjdddi5cfMdlflJfYdddiKcfVdidcelOfWdjdddi;cf"

    invoke-static {v2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/h$b;
    .locals 7

    const-string v0, "042cJdkdfdlgddgdidldc+fCdddiScf-didcfiYf(djdddiEcf)dleefl f_dddi=cf<didcee+eif<djefKdcf"

    .line 23
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    new-instance v0, Lcom/mob/commons/b/h$b;

    invoke-direct {v0}, Lcom/mob/commons/b/h$b;-><init>()V

    const-string v1, "004(dk_d=didc"

    .line 25
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/j;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/h$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method
