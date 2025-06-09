.class Lcom/mob/mgs/impl/c$6$1$1;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c$6$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/c$6$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c$6$1;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/mob/mgs/impl/c$6$1$1;->a:Lcom/mob/mgs/impl/c$6$1;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 908
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$6$1$1;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/mob/mgs/impl/c$6$1$1;->a:Lcom/mob/mgs/impl/c$6$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/c$6$1;->a:Lcom/mob/mgs/impl/c$6;

    iget-object v0, v0, Lcom/mob/mgs/impl/c$6;->b:Lcom/mob/tools/utils/e;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    return-void
.end method
