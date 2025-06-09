.class Lcom/mob/mcl/b/a$5$2;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a$5;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/b/a$5;


# direct methods
.method constructor <init>(Lcom/mob/mcl/b/a$5;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/mob/mcl/b/a$5$2;->a:Lcom/mob/mcl/b/a$5;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 199
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$5$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 202
    invoke-static {}, Lcom/mob/mcl/b/a;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object p1, p0, Lcom/mob/mcl/b/a$5$2;->a:Lcom/mob/mcl/b/a$5;

    iget-object p1, p1, Lcom/mob/mcl/b/a$5;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/mob/mcl/b/a$5$2;->a:Lcom/mob/mcl/b/a$5;

    iget-object p1, p1, Lcom/mob/mcl/b/a$5;->a:Lcom/mob/tools/utils/e;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
