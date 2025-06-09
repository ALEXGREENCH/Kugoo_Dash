.class Lcom/mob/mcl/b/a$10;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a;->a(Ljava/lang/String;JLcom/mob/tools/utils/e;)V
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

    .line 543
    iput-object p1, p0, Lcom/mob/mcl/b/a$10;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 547
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    new-instance v0, Lcom/mob/mcl/b/a$10$1;

    invoke-direct {v0, p0}, Lcom/mob/mcl/b/a$10$1;-><init>(Lcom/mob/mcl/b/a$10;)V

    invoke-virtual {p1, v0}, Lcom/mob/mcl/c/h;->b(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 543
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$10;->a(Ljava/lang/Boolean;)V

    return-void
.end method
