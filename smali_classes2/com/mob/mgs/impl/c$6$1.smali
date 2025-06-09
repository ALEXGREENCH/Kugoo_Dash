.class Lcom/mob/mgs/impl/c$6$1;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c$6;->a(Ljava/lang/Boolean;)V
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
.field final synthetic a:Lcom/mob/mgs/impl/c$6;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c$6;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 904
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$6$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
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

    .line 907
    iget-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$6;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_0

    .line 908
    iget-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget-object v0, p1, Lcom/mob/mgs/impl/c$6;->f:Lcom/mob/mgs/impl/c;

    iget-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget v1, p1, Lcom/mob/mgs/impl/c$6;->c:I

    iget-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget-object v2, p1, Lcom/mob/mgs/impl/c$6;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget-object v3, p1, Lcom/mob/mgs/impl/c$6;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget-object v4, p1, Lcom/mob/mgs/impl/c$6;->e:Ljava/lang/String;

    new-instance v5, Lcom/mob/mgs/impl/c$6$1$1;

    invoke-direct {v5, p0}, Lcom/mob/mgs/impl/c$6$1$1;-><init>(Lcom/mob/mgs/impl/c$6$1;)V

    invoke-static/range {v0 .. v5}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    :cond_0
    return-void
.end method
