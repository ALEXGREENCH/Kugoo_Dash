.class Lcom/mob/mgs/impl/c$7;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/mob/tools/utils/e;

.field final synthetic d:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/mob/mgs/impl/c$7;->d:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/mgs/impl/c$7;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/mob/mgs/impl/c$7;->c:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .line 969
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GD] stAct rst. pkg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mob/mgs/impl/c$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "executeResult"

    if-eqz p1, :cond_0

    .line 971
    iget-object p1, p0, Lcom/mob/mgs/impl/c$7;->b:Ljava/util/HashMap;

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 973
    :cond_0
    iget-object p1, p0, Lcom/mob/mgs/impl/c$7;->b:Ljava/util/HashMap;

    const-string v1, "uncertain"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    :goto_0
    iget-object p1, p0, Lcom/mob/mgs/impl/c$7;->c:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_1

    .line 976
    iget-object v0, p0, Lcom/mob/mgs/impl/c$7;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 966
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$7;->a(Ljava/lang/Boolean;)V

    return-void
.end method
