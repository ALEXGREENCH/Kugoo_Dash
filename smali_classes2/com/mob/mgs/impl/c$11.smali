.class Lcom/mob/mgs/impl/c$11;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->b(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/util/List<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/e;

.field final synthetic b:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/mob/mgs/impl/c$11;->b:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$11;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 347
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$11;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "[GD] gd resp:"

    const-string v1, "[GD] avlb uplv tg: "

    const/4 v2, 0x0

    .line 352
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/mgs/MobMGS;->getDS()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/mob/mgs/impl/d;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 355
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mob/mgs/impl/c$11;->b:Lcom/mob/mgs/impl/c;

    const-string v1, "workId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/c;->b(Lcom/mob/mgs/impl/c;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/mob/mgs/impl/c$11;->b:Lcom/mob/mgs/impl/c;

    const-string v1, "syncIdState"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;Z)Z

    .line 359
    iget-object v0, p0, Lcom/mob/mgs/impl/c$11;->b:Lcom/mob/mgs/impl/c;

    const-string v1, "asMaster"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;I)I

    .line 360
    iget-object v0, p0, Lcom/mob/mgs/impl/c$11;->b:Lcom/mob/mgs/impl/c;

    const-string v1, "pollTotal"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/c;->b(Lcom/mob/mgs/impl/c;I)I

    .line 361
    iget-object v0, p0, Lcom/mob/mgs/impl/c$11;->b:Lcom/mob/mgs/impl/c;

    const-string v1, "pkgList"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/mob/mgs/impl/c$11;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 365
    :try_start_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    iget-object p1, p0, Lcom/mob/mgs/impl/c$11;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_1

    .line 368
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 367
    iget-object v0, p0, Lcom/mob/mgs/impl/c$11;->a:Lcom/mob/tools/utils/e;

    if-eqz v0, :cond_2

    .line 368
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    .line 370
    :cond_2
    throw p1
.end method
