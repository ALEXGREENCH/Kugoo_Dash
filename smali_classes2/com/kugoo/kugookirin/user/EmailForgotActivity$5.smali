.class Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;
.super Ljava/lang/Object;
.source "EmailForgotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailForgotActivity;->checkEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 160
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->finish()V

    return-void
.end method
