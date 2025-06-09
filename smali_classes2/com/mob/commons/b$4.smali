.class Lcom/mob/commons/b$4;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->b(Ljava/lang/String;I)Lcom/mob/tools/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/mob/commons/b$4;->a:Ljava/lang/String;

    iput p2, p0, Lcom/mob/commons/b$4;->b:I

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 458
    sget-object v0, Lcom/mob/tools/c/a;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-string v0, "M-"

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/commons/b$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 463
    :cond_0
    new-instance v0, Lcom/mob/commons/b$4$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/b$4$1;-><init>(Lcom/mob/commons/b$4;)V

    invoke-static {v0}, Lcom/mob/commons/b;->a(Lcom/mob/tools/utils/e;)V

    .line 477
    sget-object v0, Lcom/mob/tools/c/a;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
