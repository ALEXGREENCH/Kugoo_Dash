.class Lcom/mob/mcl/b/a$9;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a;->b(Lcom/mob/tools/utils/e;)V
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
.field final synthetic a:Lcom/mob/tools/utils/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/mob/mcl/b/a$9;->a:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 308
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$9;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/mob/mcl/b/a$9;->a:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
