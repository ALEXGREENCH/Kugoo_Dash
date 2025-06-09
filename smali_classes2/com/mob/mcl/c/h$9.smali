.class Lcom/mob/mcl/c/h$9;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->b(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/e;

.field final synthetic b:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/mob/mcl/c/h$9;->b:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$9;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 692
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/c/h$9;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/mob/mcl/c/h$9;->b:Lcom/mob/mcl/c/h;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Lcom/mob/mcl/c/h;->a(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 697
    iget-object p1, p0, Lcom/mob/mcl/c/h$9;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 698
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object p1, p0, Lcom/mob/mcl/c/h$9;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 702
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
