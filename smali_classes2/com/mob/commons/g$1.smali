.class Lcom/mob/commons/g$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/g;


# direct methods
.method constructor <init>(Lcom/mob/commons/g;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mob/commons/g$1;->a:Lcom/mob/commons/g;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 67
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mob/commons/g$1;->a:Lcom/mob/commons/g;

    invoke-static {v0}, Lcom/mob/commons/g;->a(Lcom/mob/commons/g;)V

    :cond_0
    return-void
.end method
