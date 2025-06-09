.class Lcom/mob/mgs/impl/c$6;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
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

.field final synthetic b:Lcom/mob/tools/utils/e;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Lcom/mob/tools/utils/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/mob/mgs/impl/c$6;->f:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/mgs/impl/c$6;->b:Lcom/mob/tools/utils/e;

    iput p4, p0, Lcom/mob/mgs/impl/c$6;->c:I

    iput-object p5, p0, Lcom/mob/mgs/impl/c$6;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mob/mgs/impl/c$6;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 6

    .line 900
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GD]target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mob/mgs/impl/c$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 903
    iget-object p1, p0, Lcom/mob/mgs/impl/c$6;->f:Lcom/mob/mgs/impl/c;

    invoke-static {p1}, Lcom/mob/mgs/impl/c;->d(Lcom/mob/mgs/impl/c;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 904
    iget-object p1, p0, Lcom/mob/mgs/impl/c$6;->f:Lcom/mob/mgs/impl/c;

    new-instance v0, Lcom/mob/mgs/impl/c$6$1;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/c$6$1;-><init>(Lcom/mob/mgs/impl/c$6;)V

    invoke-static {p1, v0}, Lcom/mob/mgs/impl/c;->b(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;)V

    goto :goto_0

    .line 918
    :cond_0
    iget-object p1, p0, Lcom/mob/mgs/impl/c$6;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_2

    .line 919
    iget-object v0, p0, Lcom/mob/mgs/impl/c$6;->f:Lcom/mob/mgs/impl/c;

    iget v1, p0, Lcom/mob/mgs/impl/c$6;->c:I

    iget-object v2, p0, Lcom/mob/mgs/impl/c$6;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/mgs/impl/c$6;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/mgs/impl/c$6;->e:Ljava/lang/String;

    new-instance v5, Lcom/mob/mgs/impl/c$6$2;

    invoke-direct {v5, p0}, Lcom/mob/mgs/impl/c$6$2;-><init>(Lcom/mob/mgs/impl/c$6;)V

    invoke-static/range {v0 .. v5}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/e;)V

    goto :goto_0

    .line 928
    :cond_1
    iget-object p1, p0, Lcom/mob/mgs/impl/c$6;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_2

    .line 929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 897
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$6;->a(Ljava/lang/Boolean;)V

    return-void
.end method
