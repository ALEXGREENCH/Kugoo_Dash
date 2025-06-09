.class Lcom/mob/mgs/impl/c$8;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Lcom/mob/tools/utils/e;)V
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
.field final synthetic a:Lcom/mob/tools/utils/e;

.field final synthetic b:[Z

.field final synthetic c:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Lcom/mob/tools/utils/e;[Z)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/mob/mgs/impl/c$8;->c:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$8;->a:Lcom/mob/tools/utils/e;

    iput-object p3, p0, Lcom/mob/mgs/impl/c$8;->b:[Z

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/mob/mgs/impl/c$8;->a:Lcom/mob/tools/utils/e;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/mob/mgs/impl/c$8;->b:[Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1025
    iget-object p1, p0, Lcom/mob/mgs/impl/c$8;->a:Lcom/mob/tools/utils/e;

    iget-object v0, p0, Lcom/mob/mgs/impl/c$8;->b:[Z

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1020
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mgs/impl/c$8;->a(Ljava/lang/Boolean;)V

    return-void
.end method
