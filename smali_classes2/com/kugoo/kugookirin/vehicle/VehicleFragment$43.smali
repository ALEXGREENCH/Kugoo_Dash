.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLockPwdDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 2924
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2927
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2944
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/StringToAscii;->parseAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2945
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->sendLockPwd(Ljava/lang/String;)V

    .line 2946
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 2942
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1201c7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
