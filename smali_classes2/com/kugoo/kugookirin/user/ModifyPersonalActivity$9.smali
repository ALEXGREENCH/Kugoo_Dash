.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->showTimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

.field final synthetic val$PickerDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;->val$PickerDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 457
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const-string v0, "birthday"

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$300(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$200(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;->val$PickerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
