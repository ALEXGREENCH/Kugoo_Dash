.class Lcn/smssdk/gui/IdentifyNumPage$2$1;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage$2;->onReadVerifyCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/IdentifyNumPage$2;

.field final synthetic val$verifyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage$2;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$2$1;->this$1:Lcn/smssdk/gui/IdentifyNumPage$2;

    iput-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage$2$1;->val$verifyCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$2$1;->this$1:Lcn/smssdk/gui/IdentifyNumPage$2;

    iget-object v0, v0, Lcn/smssdk/gui/IdentifyNumPage$2;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$300(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$2$1;->val$verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
