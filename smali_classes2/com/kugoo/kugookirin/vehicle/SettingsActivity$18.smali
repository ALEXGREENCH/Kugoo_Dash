.class Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showRePwd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 824
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->val$dialog:Landroid/app/Dialog;

    const v0, 0x7f0a0099

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 825
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->val$dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->val$dialog:Landroid/app/Dialog;

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 833
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SC+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 834
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_PASSWORD:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f1201c5

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 836
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 838
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f1201c7

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 841
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f1201a8

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 844
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f1201bc

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 828
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const v0, 0x7f120130

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
