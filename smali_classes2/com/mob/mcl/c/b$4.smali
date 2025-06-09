.class Lcom/mob/mcl/c/b$4;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/b;->a(Lcom/mob/tools/utils/e;)V
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

.field final synthetic b:Lcom/mob/mcl/c/b;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/b;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mob/mcl/c/b$4;->b:Lcom/mob/mcl/c/b;

    iput-object p2, p0, Lcom/mob/mcl/c/b$4;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/mob/mcl/c/b$4;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/c/b$4;->a(Ljava/lang/Boolean;)V

    return-void
.end method
