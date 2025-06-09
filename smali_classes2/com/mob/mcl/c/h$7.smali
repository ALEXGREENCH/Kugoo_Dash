.class Lcom/mob/mcl/c/h$7;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->a(ILcom/mob/tools/utils/e;)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/mob/tools/utils/e;

.field final synthetic c:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;ILcom/mob/tools/utils/e;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/mob/mcl/c/h$7;->c:Lcom/mob/mcl/c/h;

    iput p2, p0, Lcom/mob/mcl/c/h$7;->a:I

    iput-object p3, p0, Lcom/mob/mcl/c/h$7;->b:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 558
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/c/h$7;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/mob/mcl/c/h$7;->c:Lcom/mob/mcl/c/h;

    iget-boolean v1, v0, Lcom/mob/mcl/c/h;->m:Z

    iget-object v2, p0, Lcom/mob/mcl/c/h$7;->c:Lcom/mob/mcl/c/h;

    iget-object v2, v2, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v5, p0, Lcom/mob/mcl/c/h$7;->a:I

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/c/h;ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    .line 562
    iget-object v0, p0, Lcom/mob/mcl/c/h$7;->b:Lcom/mob/tools/utils/e;

    if-eqz v0, :cond_0

    .line 563
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
