.class Lcom/mob/commons/j$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/j;->b(Ljava/util/ArrayList;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:[Z

.field final synthetic d:Lcom/mob/commons/j;


# direct methods
.method constructor <init>(Lcom/mob/commons/j;Ljava/util/List;Ljava/util/ArrayList;[Z)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/mob/commons/j$4;->d:Lcom/mob/commons/j;

    iput-object p2, p0, Lcom/mob/commons/j$4;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/commons/j$4;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/mob/commons/j$4;->c:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 476
    :goto_0
    iget-object v2, p0, Lcom/mob/commons/j$4;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v0

    .line 477
    invoke-virtual {p1, v2}, Lcom/mob/tools/utils/DH$DHResponse;->isPackageInstalled([I)Z

    move-result v2

    .line 478
    iget-object v3, p0, Lcom/mob/commons/j$4;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v3, p0, Lcom/mob/commons/j$4;->c:[Z

    aget-boolean v4, v3, v0

    or-int/2addr v2, v4

    aput-boolean v2, v3, v0

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
