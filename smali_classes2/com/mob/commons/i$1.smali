.class Lcom/mob/commons/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/i;


# direct methods
.method constructor <init>(Lcom/mob/commons/i;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {v0}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
