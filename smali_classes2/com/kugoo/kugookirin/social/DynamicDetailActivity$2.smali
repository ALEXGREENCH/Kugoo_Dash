.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    const/4 p3, 0x0

    if-ne p2, p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 212
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$600(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    const p2, 0x7f120045

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method
