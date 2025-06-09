.class Lcom/mob/commons/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a;->a(Lcom/mob/commons/MobProduct;Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;

.field final synthetic b:Lcom/mob/tools/utils/e;

.field final synthetic c:Lcom/mob/commons/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a;Lcom/mob/commons/MobProduct;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    iput-object p2, p0, Lcom/mob/commons/a$1;->a:Lcom/mob/commons/MobProduct;

    iput-object p3, p0, Lcom/mob/commons/a$1;->b:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 13

    const-string v0, ", udif:"

    const-string v1, "map: "

    const/4 v2, 0x0

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v3}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;)[B

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    iget-object v4, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    sget-object v5, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-static {v4, v5, p1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;Ljava/lang/String;Lcom/mob/tools/utils/DH$DHResponse;)Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v5, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v5}, Lcom/mob/commons/a;->b(Lcom/mob/commons/a;)Ljava/util/HashMap;

    move-result-object v5

    .line 133
    iget-object v6, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v6, v5, p1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;Ljava/util/HashMap;Lcom/mob/tools/utils/DH$DHResponse;)Z

    move-result v6

    .line 134
    iget-object v7, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v7}, Lcom/mob/commons/a;->c(Lcom/mob/commons/a;)Z

    move-result v7

    .line 135
    iget-object v8, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_1

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v11, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v10

    :goto_1
    invoke-static {v8, v11}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;Z)Z

    .line 136
    iget-object v8, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    iget-object v11, p0, Lcom/mob/commons/a$1;->a:Lcom/mob/commons/MobProduct;

    invoke-static {v8, v5, v11, p1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;Ljava/util/HashMap;Lcom/mob/commons/MobProduct;Lcom/mob/tools/utils/DH$DHResponse;)Z

    move-result v8

    .line 137
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\nisCh: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", isG: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", isReg: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v0}, Lcom/mob/commons/a;->d(Lcom/mob/commons/a;)Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-virtual {v11, v1, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 138
    iget-object v0, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v0}, Lcom/mob/commons/a;->d(Lcom/mob/commons/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v4, Lcom/mob/commons/e;->a:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {v0, v5, v4, p1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;Ljava/util/HashMap;Ljava/lang/String;Lcom/mob/tools/utils/DH$DHResponse;)V

    :cond_3
    if-nez v6, :cond_4

    if-eqz v8, :cond_5

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/mob/commons/a$1;->c:Lcom/mob/commons/a;

    invoke-static {p1, v5}, Lcom/mob/commons/a;->a(Lcom/mob/commons/a;Ljava/util/HashMap;)V

    .line 147
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iget-object p1, p0, Lcom/mob/commons/a$1;->b:Lcom/mob/tools/utils/e;

    invoke-virtual {p1, v2}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 147
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 149
    iget-object v0, p0, Lcom/mob/commons/a$1;->b:Lcom/mob/tools/utils/e;

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    .line 150
    throw p1
.end method
