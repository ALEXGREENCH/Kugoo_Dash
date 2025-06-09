.class public Lcn/smssdk/gui/util/GUISPDB;
.super Ljava/lang/Object;
.source "GUISPDB.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "SMSSDKGUI_SPDB"

.field private static final DB_VERSION:I = 0x1

.field private static final KEY_PROFILE:Ljava/lang/String; = "key_profile"

.field private static final KEY_TEMP_CODE:Ljava/lang/String; = "key_tempCode"

.field private static sp:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/gui/util/GUISPDB;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "SMSSDKGUI_SPDB"

    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile()Lcn/smssdk/gui/entity/Profile;
    .locals 2

    .line 38
    sget-object v0, Lcn/smssdk/gui/util/GUISPDB;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_profile"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/gui/entity/Profile;

    return-object v0
.end method

.method public static getTempCode()Ljava/lang/String;
    .locals 2

    .line 30
    sget-object v0, Lcn/smssdk/gui/util/GUISPDB;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_tempCode"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setProfile(Lcn/smssdk/gui/entity/Profile;)V
    .locals 2

    .line 34
    sget-object v0, Lcn/smssdk/gui/util/GUISPDB;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_profile"

    invoke-virtual {v0, v1, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTempCode(Ljava/lang/String;)V
    .locals 2

    .line 26
    sget-object v0, Lcn/smssdk/gui/util/GUISPDB;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_tempCode"

    invoke-virtual {v0, v1, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
