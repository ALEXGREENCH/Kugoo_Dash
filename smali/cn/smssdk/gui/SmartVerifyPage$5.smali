.class Lcn/smssdk/gui/SmartVerifyPage$5;
.super Ljava/lang/Object;
.source "SmartVerifyPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SmartVerifyPage;->showNotifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/SmartVerifyPage;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/SmartVerifyPage;Landroid/app/Dialog;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage$5;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    iput-object p2, p0, Lcn/smssdk/gui/SmartVerifyPage$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 213
    iget-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage$5;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-virtual {p1}, Lcn/smssdk/gui/SmartVerifyPage;->finish()V

    return-void
.end method
