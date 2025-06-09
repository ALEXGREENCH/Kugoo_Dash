.class Lcom/kugoo/kugookirin/social/HomePageActivity$8;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;->showTipOffsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$8;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 549
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$8;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$600(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Spam"

    const-string v2, "2"

    invoke-static {p1, v2, v0, v1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$700(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
