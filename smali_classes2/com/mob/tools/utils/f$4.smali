.class Lcom/mob/tools/utils/f$4;
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
.field final synthetic a:I

.field final synthetic b:Lcom/mob/tools/utils/f;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/f;I)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/mob/tools/utils/f$4;->b:Lcom/mob/tools/utils/f;

    iput p2, p0, Lcom/mob/tools/utils/f$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/f$4;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    iget p1, p0, Lcom/mob/tools/utils/f$4;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
