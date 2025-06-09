.class Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;
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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$702(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Z)Z

    .line 224
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
