.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showBlockUserDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$homePageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;->val$homePageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 350
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;->val$homePageId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
