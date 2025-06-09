.class Lcom/mob/commons/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/commons/a/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/c;Ljava/util/HashMap;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/mob/commons/a/c$3;->b:Lcom/mob/commons/a/c;

    iput-object p2, p0, Lcom/mob/commons/a/c$3;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 342
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/mob/commons/a/c$3;->b:Lcom/mob/commons/a/c;

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mob/commons/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/mob/commons/a/c$3;->a:Ljava/util/HashMap;

    const-string v1, "nl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
