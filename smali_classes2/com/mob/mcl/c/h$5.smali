.class Lcom/mob/mcl/c/h$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/BusinessCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/mob/mcl/c/h$5;->a:Lcom/mob/mcl/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->f()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/h$5;->a:Lcom/mob/mcl/c/h;

    new-instance v1, Lcom/mob/mcl/c/h$5$1;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/h$5$1;-><init>(Lcom/mob/mcl/c/h$5;)V

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/h;->a(Lcom/mob/tools/utils/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
