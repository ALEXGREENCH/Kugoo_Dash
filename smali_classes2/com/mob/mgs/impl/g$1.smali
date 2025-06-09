.class Lcom/mob/mgs/impl/g$1;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g;->a(Landroid/content/Context;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;ZLandroid/content/Context;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/mob/mgs/impl/g$1;->b:Z

    iput-object p3, p0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "selfpush000"

    const-string v1, "[GD][R]acSvcType: "

    const-string v2, "[GD][R]intent: "

    .line 66
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "workId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "appkey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "pkg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "duid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "guardId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "acServiceType"

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 77
    iget-object v4, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v5, "busType"

    invoke-virtual {v4, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 78
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", busType: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", fmAct: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Lcom/mob/mgs/impl/g$1;->b:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", uld: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mob/mgs/impl/g;->a()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/16 v6, 0x7d1

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eq v3, v1, :cond_2

    const/16 v3, 0x7d2

    if-ne v4, v3, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    .line 84
    invoke-static {v0}, Lcom/mob/mgs/impl/g;->a(I)I

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x4

    .line 82
    invoke-static {v0}, Lcom/mob/mgs/impl/g;->a(I)I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    .line 80
    invoke-static {v0}, Lcom/mob/mgs/impl/g;->a(I)I

    .line 98
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/mob/mgs/impl/g$1;->b:Z

    if-nez v0, :cond_5

    .line 106
    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 107
    invoke-static {v1}, Lcom/mob/mgs/impl/g;->a(I)I

    .line 112
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    new-instance v0, Lcom/mob/mgs/impl/g$1$1;

    invoke-direct {v0, p0, v2}, Lcom/mob/mgs/impl/g$1$1;-><init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 129
    :cond_6
    invoke-static {}, Lcom/mob/mgs/impl/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 130
    invoke-static {v5}, Lcom/mob/mgs/impl/g;->a(Z)Z

    .line 149
    new-instance v0, Lcom/mob/mgs/impl/g$1$2;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/mob/mgs/impl/g$1$2;-><init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/mob/mgs/impl/g$1$2;->start()V

    .line 159
    new-instance v0, Lcom/mob/mgs/impl/g$1$3;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/g$1$3;-><init>(Lcom/mob/mgs/impl/g$1;)V

    invoke-static {v12, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 199
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method
