.class Lcom/mob/mgs/impl/c$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Set;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/mob/tools/utils/e;

.field final synthetic f:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/mob/mgs/impl/c$10;->f:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/mgs/impl/c$10;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/mgs/impl/c$10;->c:Ljava/util/Set;

    iput-object p5, p0, Lcom/mob/mgs/impl/c$10;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 251
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/c;->e()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    new-array v2, v3, [I

    aput v1, v2, v0

    .line 252
    invoke-virtual {p1, v2}, Lcom/mob/tools/utils/DH$DHResponse;->queryIntentServices([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10;->f:Lcom/mob/mgs/impl/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 258
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mob/mgs/impl/c$10;->f:Lcom/mob/mgs/impl/c;

    invoke-static {p1}, Lcom/mob/mgs/impl/c;->d(Lcom/mob/mgs/impl/c;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/mob/mgs/impl/c$10;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 262
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mob/mgs/impl/c$10;->b:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    .line 264
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v1

    .line 266
    :cond_3
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v1, v3, v4, v5}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMpfof(ZLjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v1

    .line 267
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    .line 271
    new-instance v0, Lcom/mob/mgs/impl/c$10$1;

    invoke-direct {v0, p0, p1}, Lcom/mob/mgs/impl/c$10$1;-><init>(Lcom/mob/mgs/impl/c$10;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    goto :goto_2

    .line 319
    :cond_5
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_6

    .line 320
    iget-object v0, p0, Lcom/mob/mgs/impl/c$10;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 324
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 325
    iget-object p1, p0, Lcom/mob/mgs/impl/c$10;->e:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_6

    .line 326
    iget-object v0, p0, Lcom/mob/mgs/impl/c$10;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method
