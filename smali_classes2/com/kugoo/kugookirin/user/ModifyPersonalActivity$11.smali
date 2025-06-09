.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 503
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->val$type:Ljava/lang/String;

    const-string v0, "weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$400(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$200(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->val$type:Ljava/lang/String;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$500(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$200(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
