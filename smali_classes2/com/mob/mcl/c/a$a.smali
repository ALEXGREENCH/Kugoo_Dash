.class Lcom/mob/mcl/c/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/mcl/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/a;


# direct methods
.method public constructor <init>(Lcom/mob/mcl/c/a;Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mob/mcl/c/a$a;->a:Lcom/mob/mcl/c/a;

    .line 130
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/mob/mcl/c/a$a;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mob/mcl/c/a$a;->a:Lcom/mob/mcl/c/a;

    invoke-virtual {v0}, Lcom/mob/mcl/c/a;->a()V

    return-void
.end method
