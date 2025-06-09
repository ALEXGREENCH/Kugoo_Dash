.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;
.super Ljava/lang/Object;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->deleteDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field final synthetic val$commentID:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->val$commentID:Ljava/lang/String;

    iput-object p4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 516
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->val$type:Ljava/lang/String;

    const-string v0, "comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->val$commentID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
