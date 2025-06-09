.class Lcom/mob/mcl/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/b;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/b;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mob/mcl/c/b$1;->a:Lcom/mob/mcl/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/mcl/c/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP HB tcp send ping success"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/b$1;->a:Lcom/mob/mcl/c/b;

    new-instance v1, Lcom/mob/mcl/c/b$1$1;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/b$1$1;-><init>(Lcom/mob/mcl/c/b$1;)V

    invoke-static {v0, v1}, Lcom/mob/mcl/c/b;->a(Lcom/mob/mcl/c/b;Lcom/mob/tools/utils/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
