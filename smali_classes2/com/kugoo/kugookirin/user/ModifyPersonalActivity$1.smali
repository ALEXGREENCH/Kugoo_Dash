.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->userLogout()V
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

    .line 303
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 306
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$000(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    .line 307
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 308
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "flagLogout"

    const/4 v1, 0x1

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$100(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->setResult(ILandroid/content/Intent;)V

    .line 311
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->finish()V

    return-void
.end method
