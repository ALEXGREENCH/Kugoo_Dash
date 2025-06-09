.class Lcom/mob/mcl/c/h$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->c(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/tools/utils/e;

.field final synthetic c:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Ljava/util/HashMap;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/mob/mcl/c/h$8;->c:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$8;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/mob/mcl/c/h$8;->b:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 639
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfo([I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/mob/mcl/c/h$8;->c:Lcom/mob/mcl/c/h;

    invoke-static {v0}, Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/c/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/c;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 643
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mob_id_ver"

    .line 645
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/mob/mcl/c/h$8;->a:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_0
    iget-object p1, p0, Lcom/mob/mcl/c/h$8;->c:Lcom/mob/mcl/c/h;

    invoke-static {p1}, Lcom/mob/mcl/c/h;->c(Lcom/mob/mcl/c/h;)Lcom/mob/tools/utils/HashonHelper;

    iget-object p1, p0, Lcom/mob/mcl/c/h$8;->a:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 653
    iget-object v0, p0, Lcom/mob/mcl/c/h$8;->b:Lcom/mob/tools/utils/e;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
