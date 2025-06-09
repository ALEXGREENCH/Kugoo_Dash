.class Lcom/mob/commons/h$2;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/h;->a(IILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/mob/commons/h;


# direct methods
.method constructor <init>(Lcom/mob/commons/h;Landroid/os/Message;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mob/commons/h$2;->b:Lcom/mob/commons/h;

    iput-object p2, p0, Lcom/mob/commons/h$2;->a:Landroid/os/Message;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/mob/commons/h$2;->b:Lcom/mob/commons/h;

    iget-object v1, p0, Lcom/mob/commons/h$2;->a:Landroid/os/Message;

    invoke-static {v0, v1}, Lcom/mob/commons/h;->a(Lcom/mob/commons/h;Landroid/os/Message;)V

    return-void
.end method
