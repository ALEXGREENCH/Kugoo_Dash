.class Lcom/mob/mgs/impl/c$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c$10;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mob/mgs/impl/c$10;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c$10;Ljava/util/List;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$10$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 275
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mob/mgs/impl/c$10$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v1, v3, v0

    .line 277
    invoke-virtual {p1, v3}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfof([I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/mgs/impl/c$10$1;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/c;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "mob_id_ver"

    .line 283
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v2, "mob_guard_version"

    .line 286
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move v2, v0

    :cond_1
    if-eqz v4, :cond_3

    .line 289
    iget-object v3, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v3, v3, Lcom/mob/mgs/impl/c$10;->c:Ljava/util/Set;

    iget-object v5, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v5, v5, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v3, v3, Lcom/mob/mgs/impl/c$10;->f:Lcom/mob/mgs/impl/c;

    iget-object v5, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v5, v5, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v3, v3, Lcom/mob/mgs/impl/c$10;->c:Ljava/util/Set;

    iget-object v5, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v5, v5, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 295
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "appPackage"

    .line 296
    iget-object v6, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v6, v6, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "targetVer"

    .line 297
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v3, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v3, v3, Lcom/mob/mgs/impl/c$10;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v3, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v3, v3, Lcom/mob/mgs/impl/c$10;->f:Lcom/mob/mgs/impl/c;

    invoke-static {v3}, Lcom/mob/mgs/impl/c;->d(Lcom/mob/mgs/impl/c;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v4, v4, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 305
    :cond_4
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_5

    .line 306
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    iget-object v0, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v0, v0, Lcom/mob/mgs/impl/c$10;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 309
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 310
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_5

    .line 311
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object p1, p1, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    iget-object v0, p0, Lcom/mob/mgs/impl/c$10$1;->b:Lcom/mob/mgs/impl/c$10;

    iget-object v0, v0, Lcom/mob/mgs/impl/c$10;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method
