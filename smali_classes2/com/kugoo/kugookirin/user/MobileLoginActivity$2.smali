.class Lcom/kugoo/kugookirin/user/MobileLoginActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "MobileLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileLoginActivity;->initPolicyTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const-class v1, Lcom/kugoo/kugookirin/user/AgreementActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_data"

    const-string v1, "privacy_policy"

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$2;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
