.class Lcn/smssdk/gui/PopupDialog$2;
.super Ljava/lang/Object;
.source "PopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/PopupDialog;->setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/PopupDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/PopupDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcn/smssdk/gui/PopupDialog$2;->this$0:Lcn/smssdk/gui/PopupDialog;

    iput-object p2, p0, Lcn/smssdk/gui/PopupDialog$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog$2;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog$2;->this$0:Lcn/smssdk/gui/PopupDialog;

    invoke-virtual {p1}, Lcn/smssdk/gui/PopupDialog;->dismiss()V

    return-void
.end method
