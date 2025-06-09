.class Lcom/mob/apc/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/apc/a/c;->a(Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mob/tools/utils/e;

.field final synthetic c:Lcom/mob/apc/a/c;


# direct methods
.method constructor <init>(Lcom/mob/apc/a/c;Ljava/util/List;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/mob/apc/a/c$1;->c:Lcom/mob/apc/a/c;

    iput-object p2, p0, Lcom/mob/apc/a/c$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/apc/a/c$1;->b:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 94
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->queryIntentServices([I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 98
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v3, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mob/apc/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/mob/apc/a/c$1;->a:Ljava/util/List;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mob/apc/a/c$1;->a:Ljava/util/List;

    aput-object v2, v1, v0

    const-string v0, "[getMAPCServiceList] list: %s"

    invoke-virtual {p1, v0, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/mob/apc/a/c$1;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/mob/apc/a/c$1;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
