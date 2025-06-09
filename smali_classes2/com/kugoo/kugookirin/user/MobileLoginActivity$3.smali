.class Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;
.super Ljava/lang/Object;
.source "MobileLoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "status"

    const-string v3, "stringRequest_s="

    .line 227
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "id"

    .line 231
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "nickName"

    .line 232
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "phone"

    .line 233
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "email"

    .line 234
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sex"

    .line 235
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "password"

    .line 236
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "portraitUrl"

    .line 237
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "profile"

    .line 238
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "birthday"

    .line 239
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "weight"

    .line 240
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "height"

    .line 241
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "country"

    .line 242
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "flag"

    .line 243
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "LV"

    .line 244
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    const-string v5, "token"

    .line 245
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    iget-object v5, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v5}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object/from16 v17, v3

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    .line 254
    :goto_0
    invoke-static {v2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    :cond_1
    invoke-static {v6}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    :cond_2
    invoke-static {v7}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    :cond_3
    invoke-static {v8}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    :cond_4
    invoke-static {v9}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    :cond_5
    invoke-static {v10}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    :cond_6
    invoke-static {v11}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    :cond_7
    invoke-static {v4}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 276
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_8
    invoke-static {v12}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    :cond_9
    invoke-static {v13}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    :cond_a
    invoke-static {v14}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    :cond_b
    invoke-static {v15}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 288
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY:Ljava/lang/String;

    invoke-interface {v0, v2, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    :cond_c
    invoke-static/range {v17 .. v17}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 291
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY_FLAG:Ljava/lang/String;

    move-object/from16 v3, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    :cond_d
    invoke-static/range {v16 .. v16}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 294
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_LEVEL:Ljava/lang/String;

    move-object/from16 v3, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    :cond_e
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const-class v4, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->finish()V

    goto/16 :goto_3

    .line 301
    :cond_f
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    .line 310
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const v2, 0x7f12013c

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 307
    :cond_13
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const v2, 0x7f1203b7

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 304
    :cond_14
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const v2, 0x7f1201d7

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getString(I)Ljava/lang/String;

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

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    :goto_3
    iget-object v0, v1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$102(Lcom/kugoo/kugookirin/user/MobileLoginActivity;Z)Z

    return-void
.end method
