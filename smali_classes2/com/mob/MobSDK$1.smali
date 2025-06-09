.class Lcom/mob/MobSDK$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/OperationCallback;


# direct methods
.method constructor <init>(Lcom/mob/OperationCallback;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/mob/MobSDK$1;->a:Lcom/mob/OperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/mob/MobSDK$1;->a:Lcom/mob/OperationCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p1, v0}, Lcom/mob/OperationCallback;->onComplete(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
