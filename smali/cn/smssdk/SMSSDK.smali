.class public Lcn/smssdk/SMSSDK;
.super Ljava/lang/Object;
.source "SMSSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/SMSSDK$VerifyCodeReadListener;,
        Lcn/smssdk/SMSSDK$InitFlag;
    }
.end annotation


# static fields
.field public static final EVENT_GET_CONTACTS:I = 0x4

.field public static final EVENT_GET_FRIENDS_IN_APP:I = 0x6

.field public static final EVENT_GET_NEW_FRIENDS_COUNT:I = 0x7

.field public static final EVENT_GET_SUPPORTED_COUNTRIES:I = 0x1

.field public static final EVENT_GET_VERIFICATION_CODE:I = 0x2

.field public static final EVENT_GET_VERIFY_TOKEN_CODE:I = 0x9

.field public static final EVENT_GET_VOICE_VERIFICATION_CODE:I = 0x8

.field public static final EVENT_SUBMIT_USER_INFO:I = 0x5

.field public static final EVENT_SUBMIT_VERIFICATION_CODE:I = 0x3

.field public static final EVENT_VERIFY_LOGIN:I = 0xa

.field public static final RESULT_COMPLETE:I = -0x1

.field public static final RESULT_ERROR:I

.field private static a:Lcn/smssdk/SMSSDKCore;

.field private static b:Lcn/smssdk/SMSSDK$InitFlag;

.field private static volatile c:Z

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/SMSSDK$InitFlag;->DEFAULT:Lcn/smssdk/SMSSDK$InitFlag;

    sput-object v0, Lcn/smssdk/SMSSDK;->b:Lcn/smssdk/SMSSDK$InitFlag;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/smssdk/SMSSDK;->c:Z

    .line 3
    sput-boolean v0, Lcn/smssdk/SMSSDK;->d:Z

    .line 19
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->prepare()Lcom/mob/tools/log/NLog;

    .line 20
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcn/smssdk/SMSSDK;->c:Z

    if-nez v0, :cond_3

    .line 2
    const-class v0, Lcn/smssdk/SMSSDK;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcn/smssdk/SMSSDK;->c:Z

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "[SMSSDK] %s"

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Privacy not granted, stop init"

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 7
    monitor-exit v0

    return v3

    .line 9
    :cond_0
    invoke-static {}, Lcn/smssdk/utils/DHelper;->support()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    sput-boolean v3, Lcn/smssdk/SMSSDK;->d:Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Lcn/smssdk/utils/DHelper;->init()Ljava/lang/Object;

    move-result-object v1

    .line 13
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v4, 0x1388

    .line 15
    :try_start_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v4

    .line 17
    :try_start_3
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "[SMSSDK] %s"

    :try_start_4
    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 19
    :goto_0
    sput-boolean v2, Lcn/smssdk/SMSSDK;->d:Z

    .line 20
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "[SMSSDK] %s"

    :try_start_5
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "DH dhResponsed"

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 21
    new-instance v3, Lcn/smssdk/SMSSDKCore;

    sget-object v4, Lcn/smssdk/SMSSDK;->b:Lcn/smssdk/SMSSDK$InitFlag;

    invoke-direct {v3, v4}, Lcn/smssdk/SMSSDKCore;-><init>(Lcn/smssdk/SMSSDK$InitFlag;)V

    sput-object v3, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    .line 23
    invoke-virtual {v3}, Lcn/smssdk/SMSSDKCore;->b()V

    .line 24
    sget-object v3, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v3}, Lcn/smssdk/SMSSDKCore;->e()V

    .line 25
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    :goto_1
    :try_start_6
    sput-boolean v2, Lcn/smssdk/SMSSDK;->c:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 28
    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 32
    :cond_2
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 34
    :cond_3
    :goto_4
    sget-boolean v0, Lcn/smssdk/SMSSDK;->d:Z

    return v0
.end method

.method public static getContacts(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getCountry(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0}, Lcn/smssdk/SMSSDKCore;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryByMCC(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0}, Lcn/smssdk/SMSSDKCore;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendsInApp()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getGroupedCountryList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0}, Lcn/smssdk/SMSSDKCore;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getNewFriendsCount()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getSupportedCountries()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getToken()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0}, Lcn/smssdk/SMSSDKCore;->c()V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p0, v0}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0, p2, p3}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    return-void
.end method

.method public static getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V
    .locals 2

    .line 5
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/4 p1, 0x4

    aput-object p4, v0, p1

    .line 9
    sget-object p1, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {p1, p0, v0}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.7.8"

    return-object v0
.end method

.method public static getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcn/smssdk/SMSSDK;->getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 6
    sget-object p0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static login(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0, p1}, Lcn/smssdk/SMSSDKCore;->a(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;)V

    return-void
.end method

.method public static readVerificationCode(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0, p1}, Lcn/smssdk/SMSSDKCore;->a(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    return-void
.end method

.method public static registerEventHandler(Lcn/smssdk/EventHandler;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method public static declared-synchronized setAskPermisionOnReadContact(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class p0, Lcn/smssdk/SMSSDK;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public static setInitFlag(Lcn/smssdk/SMSSDK$InitFlag;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sput-object p0, Lcn/smssdk/SMSSDK;->b:Lcn/smssdk/SMSSDK$InitFlag;

    return-void
.end method

.method public static showAuthorizeDialog(Landroid/app/Activity;Lcn/smssdk/OnDialogListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0, p1}, Lcn/smssdk/SMSSDKCore;->a(Landroid/app/Activity;Lcn/smssdk/OnDialogListener;)V

    return-void
.end method

.method public static submitUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    .line 5
    sget-object p0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {p0, v0, v1}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 5
    sget-object p0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {p0, v0, v1}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static unregisterAllEventHandler()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0}, Lcn/smssdk/SMSSDKCore;->d()V

    return-void
.end method

.method public static unregisterEventHandler(Lcn/smssdk/EventHandler;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/SMSSDK;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/SMSSDK;->a:Lcn/smssdk/SMSSDKCore;

    invoke-virtual {v0, p0}, Lcn/smssdk/SMSSDKCore;->b(Lcn/smssdk/EventHandler;)V

    return-void
.end method
