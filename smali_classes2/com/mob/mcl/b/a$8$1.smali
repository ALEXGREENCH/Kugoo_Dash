.class Lcom/mob/mcl/b/a$8$1;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a$8;->run()V
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
.field final synthetic a:Lcom/mob/mcl/b/a$8;


# direct methods
.method constructor <init>(Lcom/mob/mcl/b/a$8;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mob/mcl/b/a$8$1;->a:Lcom/mob/mcl/b/a$8;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 283
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    iget-boolean p1, p1, Lcom/mob/mcl/c/h;->i:Z

    if-nez p1, :cond_0

    .line 284
    new-instance p1, Lcom/mob/mcl/b/a$8$1$1;

    invoke-direct {p1, p0}, Lcom/mob/mcl/b/a$8$1$1;-><init>(Lcom/mob/mcl/b/a$8$1;)V

    invoke-static {p1}, Lcom/mob/mcl/b/a;->a(Lcom/mob/tools/utils/e;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$8$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
