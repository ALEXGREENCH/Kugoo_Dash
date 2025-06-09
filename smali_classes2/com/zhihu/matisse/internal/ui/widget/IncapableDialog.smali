.class public Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "IncapableDialog.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "extra_message"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;
    .locals 3

    .line 34
    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_title"

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_message"

    .line 37
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 52
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    :cond_1
    sget p1, Lcom/zhihu/matisse/R$string;->button_ok:I

    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog$1;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog$1;-><init>(Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;)V

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
