.class Lcom/mob/apc/a/a$1;
.super Lcom/mob/apc/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/apc/a/a;-><init>(Lcom/mob/MobACService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/apc/a/a;


# direct methods
.method constructor <init>(Lcom/mob/apc/a/a;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mob/apc/a/a$1;->a:Lcom/mob/apc/a/a;

    invoke-direct {p0}, Lcom/mob/apc/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APC msg received. msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mob/apc/a/a$1;->a:Lcom/mob/apc/a/a;

    invoke-static {v0}, Lcom/mob/apc/a/a;->a(Lcom/mob/apc/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "inited: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/mob/apc/b;->a:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-boolean v0, Lcom/mob/apc/b;->a:Z

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/mob/apc/a/a$1;->a:Lcom/mob/apc/a/a;

    invoke-static {v0, v2}, Lcom/mob/apc/a/a;->a(Lcom/mob/apc/a/a;Z)Z

    if-eqz p1, :cond_2

    .line 67
    iget-object v0, p1, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    if-eqz v0, :cond_2

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    iget v0, v0, Lcom/mob/apc/a;->a:I

    const/16 v2, 0x3e9

    const-string v3, "acsActType"

    if-eq v0, v2, :cond_1

    const/16 v2, 0x232c

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 77
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 73
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string v0, "pkg"

    .line 95
    iget-object v2, p1, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mob/apc/a/c;->a(Landroid/os/Bundle;)V

    .line 102
    :cond_2
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/c;->a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;

    move-result-object p1

    return-object p1
.end method
