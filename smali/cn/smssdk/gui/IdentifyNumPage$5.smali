.class Lcn/smssdk/gui/IdentifyNumPage$5;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 289
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$800(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$702(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 290
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 293
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$900(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1000(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/smssdk/SMSSDK;->getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
