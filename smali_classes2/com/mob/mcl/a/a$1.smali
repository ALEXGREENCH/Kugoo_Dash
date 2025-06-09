.class Lcom/mob/mcl/a/a$1;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/a/a;->a(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mob/tools/utils/e;

.field final synthetic c:Lcom/mob/mcl/a/a;


# direct methods
.method constructor <init>(Lcom/mob/mcl/a/a;Ljava/util/List;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mob/mcl/a/a$1;->c:Lcom/mob/mcl/a/a;

    iput-object p2, p0, Lcom/mob/mcl/a/a$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/mcl/a/a$1;->b:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/a/a$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mob/mcl/a/a$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/mcl/a/a$1;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/mob/mcl/a/a$1;->c:Lcom/mob/mcl/a/a;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1, v0}, Lcom/mob/mcl/a/a;->a(Lcom/mob/mcl/a/a;Ljava/util/Set;)Ljava/util/Set;

    .line 89
    iget-object p1, p0, Lcom/mob/mcl/a/a$1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    new-instance v4, Lcom/mob/apc/a;

    invoke-direct {v4}, Lcom/mob/apc/a;-><init>()V

    const/4 v7, 0x1

    .line 91
    iput v7, v4, Lcom/mob/apc/a;->a:I

    .line 93
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sd apc mg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/mob/apc/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 94
    iget-object v2, p0, Lcom/mob/mcl/a/a$1;->c:Lcom/mob/mcl/a/a;

    invoke-static {v2}, Lcom/mob/mcl/a/a;->a(Lcom/mob/mcl/a/a;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x1388

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v2, v1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/mob/apc/a;->a:I

    if-ne v2, v7, :cond_0

    .line 96
    iget-object v1, v1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    const-string v2, "isTcpAvailable"

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/mob/mcl/a/a$1;->c:Lcom/mob/mcl/a/a;

    invoke-static {v1}, Lcom/mob/mcl/a/a;->b(Lcom/mob/mcl/a/a;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 103
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query tcp exp : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "apc available pg : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/mcl/a/a$1;->c:Lcom/mob/mcl/a/a;

    invoke-static {v1}, Lcom/mob/mcl/a/a;->b(Lcom/mob/mcl/a/a;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/mob/mcl/a/a$1;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
