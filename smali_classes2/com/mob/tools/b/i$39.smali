.class Lcom/mob/tools/b/i$39;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->aa()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Landroid/content/Context;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/mob/tools/b/i$39;->a:Lcom/mob/tools/b/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/mob/tools/b/i$39;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->b(Lcom/mob/tools/b/i;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/mob/tools/b/i$39;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->b(Lcom/mob/tools/b/i;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 985
    :cond_0
    invoke-static {}, Lcom/mob/tools/b/b;->x()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 987
    iget-object v1, p0, Lcom/mob/tools/b/i$39;->a:Lcom/mob/tools/b/i;

    invoke-static {v1, v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;Landroid/content/Context;)Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 979
    invoke-virtual {p0}, Lcom/mob/tools/b/i$39;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
