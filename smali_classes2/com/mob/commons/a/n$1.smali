.class Lcom/mob/commons/a/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/n;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/n;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/n;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mob/commons/a/n$1;->a:Lcom/mob/commons/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mob/commons/a/n$1;->a:Lcom/mob/commons/a/n;

    invoke-virtual {v0}, Lcom/mob/commons/a/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/mob/commons/a/n$1;->a:Lcom/mob/commons/a/n;

    invoke-static {v0}, Lcom/mob/commons/a/n;->a(Lcom/mob/commons/a/n;)V

    :cond_0
    return-void
.end method
