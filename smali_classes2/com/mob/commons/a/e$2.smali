.class Lcom/mob/commons/a/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/e;->a(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/mob/commons/a/e;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/e;ILjava/util/ArrayList;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mob/commons/a/e$2;->c:Lcom/mob/commons/a/e;

    iput p2, p0, Lcom/mob/commons/a/e$2;->a:I

    iput-object p3, p0, Lcom/mob/commons/a/e$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 7

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 69
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 72
    iget-object v1, p0, Lcom/mob/commons/a/e$2;->c:Lcom/mob/commons/a/e;

    invoke-virtual {v1, v0}, Lcom/mob/commons/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 73
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/mob/commons/a/e$2;->c:Lcom/mob/commons/a/e;

    invoke-virtual {v4, v3, v3}, Lcom/mob/commons/a/e;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 78
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getMcdi()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getMbcdi()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "cbsmt"

    .line 81
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "cssmt"

    .line 84
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/mob/commons/a/e$2;->c:Lcom/mob/commons/a/e;

    invoke-virtual {v4}, Lcom/mob/commons/a/e;->g()Z

    move-result v4

    const-string v5, "pt"

    if-eqz v4, :cond_3

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_1
    iget v4, p0, Lcom/mob/commons/a/e$2;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "lctpmt"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v4, p0, Lcom/mob/commons/a/e$2;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "wilmt"

    .line 93
    iget-object v5, p0, Lcom/mob/commons/a/e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_4
    iget-object v4, p0, Lcom/mob/commons/a/e$2;->c:Lcom/mob/commons/a/e;

    const-string v5, "LCMT"

    invoke-virtual {v4, v5, v3}, Lcom/mob/commons/a/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 100
    :cond_5
    iget p1, p0, Lcom/mob/commons/a/e$2;->a:I

    if-ne p1, v2, :cond_6

    .line 101
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/f;->a(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
