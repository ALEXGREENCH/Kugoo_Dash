.class Lcom/mob/mcl/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/b;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/b;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mob/mcl/c/b$2;->a:Lcom/mob/mcl/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 112
    sget-object p1, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/mcl/c/b$2$1;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/b$2$1;-><init>(Lcom/mob/mcl/c/b$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method
