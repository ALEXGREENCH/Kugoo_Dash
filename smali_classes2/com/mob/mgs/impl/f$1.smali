.class Lcom/mob/mgs/impl/f$1;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/f;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/f;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mob/mgs/impl/f$1;->a:Lcom/mob/mgs/impl/f;

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "MgsGlobal init: start"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/mob/mgs/impl/f$1;->a:Lcom/mob/mgs/impl/f;

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/mob/mgs/impl/f$1;->a:Lcom/mob/mgs/impl/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/f;->a(Lcom/mob/mgs/impl/f;Z)Z

    .line 67
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "MgsGlobal init: done"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    return-void
.end method
