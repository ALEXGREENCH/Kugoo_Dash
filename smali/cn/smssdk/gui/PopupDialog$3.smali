.class Lcn/smssdk/gui/PopupDialog$3;
.super Ljava/lang/Object;
.source "PopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/PopupDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/PopupDialog;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/PopupDialog;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/smssdk/gui/PopupDialog$3;->this$0:Lcn/smssdk/gui/PopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog$3;->this$0:Lcn/smssdk/gui/PopupDialog;

    invoke-virtual {p1}, Lcn/smssdk/gui/PopupDialog;->dismiss()V

    return-void
.end method
