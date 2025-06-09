.class Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;
.super Ljava/lang/Object;
.source "MobileForgotActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileForgotActivity;->areaCodeSelectDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$selectDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->val$selectDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAreaItemClick(I)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->val$selectDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->areaCodeItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    .line 217
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->getFlagImgId()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0f0006

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object v1, v1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
