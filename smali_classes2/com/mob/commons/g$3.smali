.class Lcom/mob/commons/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/g;->a(Landroid/os/Message;)V
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

    .line 139
    iput-object p1, p0, Lcom/mob/commons/g$3;->a:Lcom/mob/commons/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/commons/g$3;->a:Lcom/mob/commons/g;

    invoke-static {v0}, Lcom/mob/commons/g;->b(Lcom/mob/commons/g;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/mob/commons/a/l;->c(JLjava/lang/Runnable;)Z

    return-void
.end method
