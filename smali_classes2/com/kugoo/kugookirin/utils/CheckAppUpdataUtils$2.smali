.class Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;
.super Ljava/lang/Object;
.source "CheckAppUpdataUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils;->showUpdaDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;->val$activity:Landroid/app/Activity;

    const v2, 0x7f13015c

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "App have update,please update!"

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2$1;-><init>(Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;)V

    const v2, 0x7f1201ba

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
