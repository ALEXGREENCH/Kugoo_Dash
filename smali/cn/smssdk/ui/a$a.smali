.class Lcn/smssdk/ui/a$a;
.super Ljava/lang/Object;
.source "AuthorizeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/ui/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/ui/a;


# direct methods
.method constructor <init>(Lcn/smssdk/ui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/ui/a$a;->a:Lcn/smssdk/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/smssdk/ui/a$a;->a:Lcn/smssdk/ui/a;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/smssdk/ui/a$a;->a:Lcn/smssdk/ui/a;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/smssdk/ui/a$a;->a:Lcn/smssdk/ui/a;

    invoke-static {p1}, Lcn/smssdk/ui/a;->a(Lcn/smssdk/ui/a;)Lcn/smssdk/OnDialogListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/smssdk/ui/a$a;->a:Lcn/smssdk/ui/a;

    invoke-static {p1}, Lcn/smssdk/ui/a;->a(Lcn/smssdk/ui/a;)Lcn/smssdk/OnDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/smssdk/OnDialogListener;->onAgree()V

    :cond_1
    return-void
.end method
