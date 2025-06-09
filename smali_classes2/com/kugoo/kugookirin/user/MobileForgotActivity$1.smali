.class Lcom/kugoo/kugookirin/user/MobileForgotActivity$1;
.super Lcn/smssdk/EventHandler;
.source "MobileForgotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileForgotActivity;->initSms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$1;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$1;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 115
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 116
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 117
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$1;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
