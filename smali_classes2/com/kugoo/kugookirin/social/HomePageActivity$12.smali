.class Lcom/kugoo/kugookirin/social/HomePageActivity$12;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;->showBlockUserDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$homePageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$12;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$12;->val$homePageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$12;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 589
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$12;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$12;->val$homePageId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$900(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;)V

    .line 590
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$12;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
