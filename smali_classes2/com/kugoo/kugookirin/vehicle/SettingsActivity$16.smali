.class Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showReName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$oldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->val$oldName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 790
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->val$dialog:Landroid/app/Dialog;

    const v0, 0x7f0a00a0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 791
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 792
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f1200bb

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->val$oldName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f1201fc

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 796
    :cond_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SN+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_NAME:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 798
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f120050

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 800
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
