.class Lcom/mob/mcl/b/a$5;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a;->a(ILcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/mob/mcl/b/a$5;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    .line 180
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    iget-boolean p1, p1, Lcom/mob/mcl/c/h;->i:Z

    if-nez p1, :cond_0

    .line 181
    new-instance p1, Lcom/mob/mcl/b/a$5$1;

    invoke-direct {p1, p0}, Lcom/mob/mcl/b/a$5$1;-><init>(Lcom/mob/mcl/b/a$5;)V

    invoke-static {p1}, Lcom/mob/mcl/b/a;->a(Lcom/mob/tools/utils/e;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lcom/mob/mcl/b/a;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    iget-object p1, p0, Lcom/mob/mcl/b/a$5;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "tp reg failed"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 199
    new-instance p1, Lcom/mob/mcl/b/a$5$2;

    invoke-direct {p1, p0}, Lcom/mob/mcl/b/a$5$2;-><init>(Lcom/mob/mcl/b/a$5;)V

    invoke-static {p1}, Lcom/mob/mcl/b/a;->a(Lcom/mob/tools/utils/e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$5;->a(Ljava/lang/Boolean;)V

    return-void
.end method
