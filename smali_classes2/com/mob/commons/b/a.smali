.class public Lcom/mob/commons/b/a;
.super Lcom/mob/commons/b/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 4

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "030d elegem7e,gjehgjemeggjGe3em7edjVejel8f%emgefefehjfmfmeigmffgm"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "029d-elegem e6gjehgjemeggjQeXemfmehUkkhg$egZgfje1ekfdgmffgm"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "053d elegemVe;gjehgjemeggj,eZemfmehTkkhg4eg\'gfjeQekfdgmffgmemfmeh;kkhg+eg%gfje<ekfdgmffgmfm g!ekeeej4dg"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/h$b;
    .locals 8

    .line 21
    new-instance v0, Lcom/mob/commons/b/h$b;

    invoke-direct {v0}, Lcom/mob/commons/b/h$b;-><init>()V

    const-string v1, "004.el$e+ejed"

    .line 22
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "047d_elegem2eZgjehgjemeggjPe*emfmeh8kkhg$egRgfjeQekfdgmffgmemffgmejedgeejedSh+ffHfjgDekfgOedg"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/h$b;->a:Ljava/lang/String;

    return-object v0
.end method
