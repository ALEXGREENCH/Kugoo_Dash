.class Lcom/mob/commons/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/q;->a(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/mob/commons/q;


# direct methods
.method constructor <init>(Lcom/mob/commons/q;Ljava/lang/Runnable;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mob/commons/q$1;->b:Lcom/mob/commons/q;

    iput-object p2, p0, Lcom/mob/commons/q$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/mob/commons/q$1;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return p1
.end method
