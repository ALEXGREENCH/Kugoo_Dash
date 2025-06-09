.class Lcom/kugoo/kugookirin/social/DiscoverFragment$8;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 379
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 380
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/user/SignLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "showBackBtn"

    const/4 v1, 0x1

    .line 381
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showSkipBtn"

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
