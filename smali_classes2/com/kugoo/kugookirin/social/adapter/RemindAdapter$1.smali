.class Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;
.super Ljava/lang/Object;
.source "RemindAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

.field final synthetic val$holder:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;ILcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->val$holder:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    .line 98
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->val$holder:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;->selectBean(Lcom/kugoo/kugookirin/social/bean/RemindInfo;)V

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click==  pos=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ischeck=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sasasas"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
