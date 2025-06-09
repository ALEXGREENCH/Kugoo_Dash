.class Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;
.super Ljava/lang/Object;
.source "EmailLoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "status"

    .line 357
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v0, "id"

    .line 359
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "nickName"

    .line 360
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "phone"

    .line 361
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "email"

    .line 362
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sex"

    .line 363
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "password"

    .line 364
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "portraitUrl"

    .line 365
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "profile"

    .line 366
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "birthday"

    .line 367
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "weight"

    .line 368
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "height"

    .line 369
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "country"

    .line 370
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "flag"

    .line 371
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LV"

    .line 372
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    const-string v5, "token"

    .line 373
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    iget-object v5, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v5}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object/from16 v17, v2

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    move-object/from16 v17, v2

    .line 382
    :goto_0
    invoke-static {v4}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    :cond_1
    invoke-static {v6}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    :cond_2
    invoke-static {v7}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    :cond_3
    invoke-static {v8}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    :cond_4
    invoke-static {v9}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    :cond_5
    invoke-static {v10}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 398
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    :cond_6
    invoke-static {v11}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    :cond_7
    invoke-static {v3}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 404
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    :cond_8
    invoke-static {v12}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 407
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    :cond_9
    invoke-static {v13}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 410
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    :cond_a
    invoke-static {v14}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 413
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    :cond_b
    invoke-static {v15}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 416
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY:Ljava/lang/String;

    invoke-interface {v0, v2, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    :cond_c
    invoke-static/range {v17 .. v17}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 419
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY_FLAG:Ljava/lang/String;

    move-object/from16 v3, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    :cond_d
    invoke-static/range {v16 .. v16}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 422
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_LEVEL:Ljava/lang/String;

    move-object/from16 v3, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    :cond_e
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 425
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$102(Lcom/kugoo/kugookirin/user/EmailLoginActivity;Z)Z

    .line 427
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const-class v4, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 428
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->finish()V

    goto/16 :goto_3

    .line 430
    :cond_f
    iget-object v2, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 431
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_11

    const/16 v3, 0x34

    if-eq v2, v3, :cond_10

    goto :goto_1

    :cond_10
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_2

    :cond_11
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_2

    :cond_12
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_14

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    .line 439
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const v2, 0x7f12013c

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 436
    :cond_13
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const v2, 0x7f1203b7

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 433
    :cond_14
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const v2, 0x7f1200b9

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 446
    :goto_3
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$102(Lcom/kugoo/kugookirin/user/EmailLoginActivity;Z)Z

    return-void
.end method
