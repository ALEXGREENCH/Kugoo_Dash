.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->postDeleteAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 569
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    const-string v0, "stringRequest_s="

    .line 572
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 575
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 576
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v1, 0x7f1200a9

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 577
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$000(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    .line 578
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->finish()V

    goto :goto_0

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v1, 0x7f1200a6

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 583
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
