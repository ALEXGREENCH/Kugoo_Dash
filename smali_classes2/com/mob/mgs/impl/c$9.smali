.class Lcom/mob/mgs/impl/c$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 148
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getAInfoForPkg([I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "disable_mob_a_guard"

    .line 152
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 156
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Guard] run disable_mob_a_guard:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string p1, "true"

    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "cd"

    const-string v1, "221111"

    const-wide/16 v2, 0x0

    .line 164
    invoke-static {p1, v1, v2, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/commons/j;->b()Z

    move-result p1

    .line 166
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[EC] isClear init: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "all"

    const/4 v1, 0x1

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v4, v2, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    move v0, v1

    .line 178
    :cond_4
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "als on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v0, :cond_5

    return-void

    .line 184
    :cond_5
    iget-object p1, p0, Lcom/mob/mgs/impl/c$9;->a:Lcom/mob/mgs/impl/c;

    new-instance v0, Lcom/mob/mgs/impl/c$9$1;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/c$9$1;-><init>(Lcom/mob/mgs/impl/c$9;)V

    invoke-static {p1, v0}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;)V

    return-void
.end method
