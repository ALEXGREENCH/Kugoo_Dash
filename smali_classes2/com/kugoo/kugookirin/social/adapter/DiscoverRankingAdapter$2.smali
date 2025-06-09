.class Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;
.super Ljava/lang/Object;
.source "DiscoverRankingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Landroid/app/Dialog;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 91
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/user/SignLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "showBackBtn"

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showSkipBtn"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
