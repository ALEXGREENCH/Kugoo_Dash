.class public Lcn/smssdk/gui/CommonDialog;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    const-string v0, "CommonDialog"

    .line 23
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 25
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-static {p0}, Lcn/smssdk/gui/layout/ProgressDialogLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
