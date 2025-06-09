.class Lcom/kugoo/kugookirin/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/MainActivity;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$4;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/MainActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 357
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 358
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity$4;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    const-class v1, Lcom/kugoo/kugookirin/user/SignLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "showBackBtn"

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showSkipBtn"

    const/4 v1, 0x0

    .line 360
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity$4;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
