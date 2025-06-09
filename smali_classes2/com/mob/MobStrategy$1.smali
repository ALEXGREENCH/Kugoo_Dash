.class Lcom/mob/MobStrategy$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobStrategy;->setStrategy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/mob/MobStrategy$1;->a:I

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 13
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    iget v1, p0, Lcom/mob/MobStrategy$1;->a:I

    invoke-virtual {v0, v1}, Lcom/mob/commons/ab;->a(I)V

    return-void
.end method
