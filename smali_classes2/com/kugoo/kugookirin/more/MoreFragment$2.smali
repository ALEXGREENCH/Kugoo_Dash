.class Lcom/kugoo/kugookirin/more/MoreFragment$2;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/MoreFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$2;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 310
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 311
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment$2;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/user/SignLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "showBackBtn"

    const/4 v1, 0x1

    .line 312
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showSkipBtn"

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment$2;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
