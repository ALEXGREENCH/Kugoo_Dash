.class Lcom/mob/commons/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mob/commons/a/h;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/h;Z)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mob/commons/a/h$1;->b:Lcom/mob/commons/a/h;

    iput-boolean p2, p0, Lcom/mob/commons/a/h$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 68
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getIAForce([I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/mob/commons/a/h$1;->a:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/mob/commons/a/h$1;->b:Lcom/mob/commons/a/h;

    invoke-static {v0, p1}, Lcom/mob/commons/a/h;->a(Lcom/mob/commons/a/h;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
