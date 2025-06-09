.class Lcom/mob/mcl/b/a$10$1;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a$10;->a(Ljava/lang/Boolean;)V
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
.field final synthetic a:Lcom/mob/mcl/b/a$10;


# direct methods
.method constructor <init>(Lcom/mob/mcl/b/a$10;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/mob/mcl/b/a$10$1;->a:Lcom/mob/mcl/b/a$10;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/mob/mcl/b/a$10$1;->a:Lcom/mob/mcl/b/a$10;

    iget-object v0, v0, Lcom/mob/mcl/b/a$10;->a:Lcom/mob/tools/utils/e;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/mob/mcl/b/a$10$1;->a:Lcom/mob/mcl/b/a$10;

    iget-object v0, v0, Lcom/mob/mcl/b/a$10;->a:Lcom/mob/tools/utils/e;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 547
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$10$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
