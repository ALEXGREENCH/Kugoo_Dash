.class public Lcn/smssdk/gui/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSReceiver.java"


# static fields
.field private static final ACTION_SMS_RECEIVER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private listener:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SMSReceiver:Please dynamically register an instance of this class with Context.registerReceiver.\r\nIf not, the SMSSDK.VerifyCodeReadListener will be null!"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/smssdk/gui/SMSReceiver;->listener:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "android.provider.Telephony.SMS_RECEIVED"

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "pdus"

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 44
    array-length p2, p1

    new-array v0, p2, [Landroid/telephony/SmsMessage;

    const/4 v1, 0x0

    move v2, v1

    .line 45
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 46
    aget-object v3, p1, v2

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    .line 49
    aget-object p1, v0, v1

    if-eqz p1, :cond_1

    .line 51
    iget-object v2, p0, Lcn/smssdk/gui/SMSReceiver;->listener:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    invoke-static {p1, v2}, Lcn/smssdk/SMSSDK;->readVerificationCode(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
