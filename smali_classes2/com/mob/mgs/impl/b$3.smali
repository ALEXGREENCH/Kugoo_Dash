.class Lcom/mob/mgs/impl/b$3;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/mob/mgs/impl/b$3;->a:Z

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/mob/mgs/impl/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    iget-boolean v0, p0, Lcom/mob/mgs/impl/b$3;->a:Z

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/b;->a(ZZ)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/mob/mgs/impl/i;->c()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/mob/mcl/b/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {}, Lcom/mob/mgs/impl/i;->d()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[setDS] currDId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", buffDId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[setDS] currGId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", buffGId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    :cond_1
    iget-boolean v2, p0, Lcom/mob/mgs/impl/b$3;->a:Z

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mob/mgs/impl/b;->a(ZZ)V

    .line 73
    :cond_2
    iget-boolean v2, p0, Lcom/mob/mgs/impl/b$3;->a:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_3

    .line 75
    iget-boolean v0, p0, Lcom/mob/mgs/impl/b$3;->a:Z

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/b;->a(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method
