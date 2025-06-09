.class Lcom/kugoo/kugookirin/user/MobileSignUpActivity$7;
.super Ljava/lang/Object;
.source "MobileSignUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->areaCodeSelectDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

.field final synthetic val$selectDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$7;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$7;->val$selectDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 368
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$7;->val$selectDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
