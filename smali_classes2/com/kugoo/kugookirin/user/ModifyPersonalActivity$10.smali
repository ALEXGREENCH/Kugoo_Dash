.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeWeight(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->val$type:Ljava/lang/String;

    const-string v1, "weight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$402(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->val$type:Ljava/lang/String;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$502(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "select=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$400(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "   newHeight=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$500(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "changeWeight"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
