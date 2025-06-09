.class Lcom/mob/commons/a/m$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/m$1;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mob/commons/a/m$1;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/m$1;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mob/commons/a/m$1$1;->c:Lcom/mob/commons/a/m$1;

    iput-object p2, p0, Lcom/mob/commons/a/m$1$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/commons/a/m$1$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 9

    .line 82
    iget-object v0, p0, Lcom/mob/commons/a/m$1$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [I

    aput v2, v4, v1

    .line 85
    invoke-virtual {p1, v4}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfos([I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 87
    iget-object v5, p0, Lcom/mob/commons/a/m$1$1;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 88
    invoke-static {v4, v5}, Lcom/mob/tools/c;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 89
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "006bhhhZcfch"

    .line 90
    invoke-static {v8}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "006bhhLbb;dAbh"

    .line 91
    invoke-static {v8}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/mob/tools/c;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 95
    iget v4, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    .line 96
    :goto_1
    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    const-string v6, "0053bgdgdgcadg"

    .line 97
    invoke-static {v6}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    move v3, v1

    :cond_3
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    iget-object v3, p0, Lcom/mob/commons/a/m$1$1;->b:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    .line 102
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
