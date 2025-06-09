.class Lcom/kugoo/kugookirin/vehicle/SettingsActivity$13;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showResetDialog()V
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

    .line 739
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$13;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 742
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
