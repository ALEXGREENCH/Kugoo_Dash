.class Lcom/kugoo/kugookirin/user/EmailLoginActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "EmailLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailLoginActivity;->initPolicyTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const-class v1, Lcom/kugoo/kugookirin/user/AgreementActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_data"

    const-string v1, "user_agreement"

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
