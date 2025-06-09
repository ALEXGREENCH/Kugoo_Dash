.class public Lcom/mob/commons/b/b;
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

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "027b=cjceck?bNcjcj6fic$cbckcbFe=ccchFbe3chcbehcf$iiOcjciUh"

    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "043b%cjceck?bDcjcj-fic8cbckcb-e>ccch\'beSchcbehcfWiiXcjci3hMckek3eJccchIbeLddcbdk5eDciccch*be"

    invoke-static {v3}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/h$b;
    .locals 8

    .line 20
    new-instance v0, Lcom/mob/commons/b/h$b;

    invoke-direct {v0}, Lcom/mob/commons/b/h$b;-><init>()V

    const-string v1, "004=cjWcVchcb"

    .line 21
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "044b,cjceckEb]cjcjVficCcbckcbBeOccchYbe$chcbehcf iiGcjci4h,ckddek5eEccch:be]ddcbgb<cdc!di=e2ci"

    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mob/commons/b/b;->b:Ljava/lang/String;

    aput-object v2, v7, v1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/b;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/h$b;->a:Ljava/lang/String;

    return-object v0
.end method
