.class Lcom/mob/commons/h$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/h;


# direct methods
.method constructor <init>(Lcom/mob/commons/h;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mob/commons/h$1;->a:Lcom/mob/commons/h;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mob/commons/h$1;->a:Lcom/mob/commons/h;

    invoke-static {v0}, Lcom/mob/commons/h;->a(Lcom/mob/commons/h;)V

    :cond_0
    return-void
.end method
