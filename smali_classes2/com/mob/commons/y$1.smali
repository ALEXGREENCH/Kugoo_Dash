.class Lcom/mob/commons/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/y;->l()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/y;


# direct methods
.method constructor <init>(Lcom/mob/commons/y;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/mob/commons/y$1;->a:Lcom/mob/commons/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    .line 208
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getOD()Ljava/lang/String;

    move-result-object p1

    const-string v0, "00000000-0000-0000-0000-000000000000"

    const-string v1, "00000000000000000000000000000000"

    .line 209
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/ab;->i()Lcom/mob/commons/a$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Lcom/mob/commons/a$c;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v1}, Lcom/mob/commons/a$c;->d()Ljava/util/List;

    move-result-object v0

    .line 214
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/mob/commons/y$1;->a:Lcom/mob/commons/y;

    invoke-static {v0, p1}, Lcom/mob/commons/y;->a(Lcom/mob/commons/y;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method
