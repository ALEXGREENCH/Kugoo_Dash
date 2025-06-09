.class Lcom/kugoo/kugookirin/user/MobileSignUpActivity$1;
.super Lcn/smssdk/EventHandler;
.source "MobileSignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->initSms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 142
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 143
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 144
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
