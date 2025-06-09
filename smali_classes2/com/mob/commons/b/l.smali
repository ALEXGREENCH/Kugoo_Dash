.class public Lcom/mob/commons/b/l;
.super Lcom/mob/commons/b/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/mob/commons/b/m;-><init>(Landroid/content/Context;)V

    const-string p1, "022d(elegemel>khGehgjemgjIj5edejedemfffm;jCedffgm"

    .line 10
    invoke-static {p1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/b/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 4

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "033edj,ejel-fSemFdNelegemel:khTehgjemgjTj4edejedemffgmeifmhjhkhlfffehj"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "015dLelegem4d=el<hWelekelgjemeg,d<gj"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "031d)elegemel-khHehgjemgjMjCedejedemffed1gfjFejfgfdfmWgXekeeejGdg"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
