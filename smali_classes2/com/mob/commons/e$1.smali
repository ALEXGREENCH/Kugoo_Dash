.class Lcom/mob/commons/e$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mob/commons/e$1;->a:Lcom/mob/commons/MobProduct;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const-string v0, "0026cbch"

    .line 106
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Lcom/mob/commons/e;->a(Z)Z

    .line 108
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x1388

    .line 114
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 115
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 122
    :catchall_0
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-static {}, Lcom/mob/commons/e;->c()Lcom/mob/commons/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/e$1;->a:Lcom/mob/commons/MobProduct;

    new-instance v2, Lcom/mob/commons/e$1$1;

    invoke-direct {v2, p0}, Lcom/mob/commons/e$1$1;-><init>(Lcom/mob/commons/e$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/a;->a(Lcom/mob/commons/MobProduct;Lcom/mob/tools/utils/e;)V

    :cond_2
    return-void
.end method
