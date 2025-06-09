.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->postChange(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$inputValue:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 667
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 671
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 672
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 673
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$type:Ljava/lang/String;

    const-string v1, "sex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 674
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$800(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 675
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 676
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->genderTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v2, 0x7f120152

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 678
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->genderTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v2, 0x7f120107

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->genderTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v2, 0x7f120206

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$type:Ljava/lang/String;

    const-string v1, "birthday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 683
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$800(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 684
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->birthTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 685
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$type:Ljava/lang/String;

    const-string v1, "weight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 686
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$800(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 687
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->weightTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 688
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$type:Ljava/lang/String;

    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 689
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$800(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 690
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->heightTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->val$inputValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$800(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 693
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v1, 0x7f12016f

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 695
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const v1, 0x7f12016e

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 698
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
