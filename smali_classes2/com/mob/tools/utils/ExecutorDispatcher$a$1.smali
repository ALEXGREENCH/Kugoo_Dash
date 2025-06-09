.class Lcom/mob/tools/utils/ExecutorDispatcher$a$1;
.super Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ExecutorDispatcher$a;->executeDelayed(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;

.field final synthetic b:Lcom/mob/tools/utils/ExecutorDispatcher$a;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ExecutorDispatcher$a;Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/mob/tools/utils/ExecutorDispatcher$a$1;->b:Lcom/mob/tools/utils/ExecutorDispatcher$a;

    iput-object p2, p0, Lcom/mob/tools/utils/ExecutorDispatcher$a$1;->a:Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;

    invoke-direct {p0}, Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/mob/tools/utils/ExecutorDispatcher$a$1;->b:Lcom/mob/tools/utils/ExecutorDispatcher$a;

    iget-object v1, p0, Lcom/mob/tools/utils/ExecutorDispatcher$a$1;->a:Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ExecutorDispatcher$a;->executeImmediately(Lcom/mob/tools/utils/ExecutorDispatcher$SafeRunnable;)V

    return-void
.end method
