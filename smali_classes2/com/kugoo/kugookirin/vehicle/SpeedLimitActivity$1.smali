.class Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;
.super Ljava/lang/Object;
.source "SpeedLimitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showSpeedPicker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

.field final synthetic val$dataList:Ljava/util/List;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$gear:I

.field final synthetic val$pickerView:Lcom/kugoo/kugookirin/view/PickerView;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Ljava/util/List;Lcom/kugoo/kugookirin/view/PickerView;ILandroid/app/Dialog;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$dataList:Ljava/util/List;

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$pickerView:Lcom/kugoo/kugookirin/view/PickerView;

    iput p4, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$gear:I

    iput-object p5, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 198
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$dataList:Ljava/util/List;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$pickerView:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/PickerView;->getCurrentSelected()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 199
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$gear:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$302(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$102(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I

    .line 210
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "asdff"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limitValue_1=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//limitValue_2=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//limitValue_3=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send command=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$702(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Z)Z

    .line 214
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 215
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->val$gear:I

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)V

    .line 216
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$900(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    return-void
.end method
