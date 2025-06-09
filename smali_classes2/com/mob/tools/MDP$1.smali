.class Lcom/mob/tools/MDP$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/MDP;->get(Ljava/lang/String;Ljava/util/ArrayList;ZI)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mob/tools/MDP$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/tools/MDP$1;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/mob/tools/MDP$1;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mob/tools/MDP$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/tools/MDP$1;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mob/tools/c/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/mob/tools/MDP;->a()Ljava/lang/Object;

    move-result-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/MDP$1;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
