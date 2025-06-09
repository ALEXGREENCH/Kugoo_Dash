.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 542
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$600(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$700(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
