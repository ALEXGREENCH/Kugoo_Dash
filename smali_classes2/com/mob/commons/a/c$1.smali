.class Lcom/mob/commons/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/c;->a(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/e;

.field final synthetic b:Lcom/mob/commons/a/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/c;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/mob/commons/a/c$1;->b:Lcom/mob/commons/a/c;

    iput-object p2, p0, Lcom/mob/commons/a/c$1;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 277
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/mob/commons/a/c$1;->b:Lcom/mob/commons/a/c;

    invoke-virtual {v0, p1}, Lcom/mob/commons/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/mob/commons/a/c$1;->a:Lcom/mob/tools/utils/e;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/a/c$1;->a:Lcom/mob/tools/utils/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
