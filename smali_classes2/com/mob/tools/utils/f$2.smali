.class Lcom/mob/tools/utils/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/ReflectHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/f;->e()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/utils/ReflectHelper$a<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/f;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/f;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/mob/tools/utils/f$2;->a:Lcom/mob/tools/utils/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/f$2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 121
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/mob/tools/utils/f$2;->a:Lcom/mob/tools/utils/f;

    invoke-static {p1}, Lcom/mob/tools/utils/f;->c(Lcom/mob/tools/utils/f;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
