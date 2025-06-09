.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;->this$1:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDeleteDialog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showSoftInput(Ljava/lang/String;)V
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;->this$1:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;

    iget-object v0, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 608
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;->this$1:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;->this$1:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;

    iget-object v0, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;->this$1:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;

    iget-object v1, v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object v1, v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showSoftInputFromWindow(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method
