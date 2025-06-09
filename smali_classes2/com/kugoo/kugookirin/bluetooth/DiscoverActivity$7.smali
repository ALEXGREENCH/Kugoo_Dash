.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;
.super Ljava/lang/Object;
.source "DiscoverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->requestPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$pwd_num:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->val$pwd_num:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 441
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->val$pwd_num:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "password can not be empty."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 445
    :cond_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iput-object p1, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    .line 446
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CODE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 448
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$302(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Z)Z

    :goto_0
    return-void
.end method
