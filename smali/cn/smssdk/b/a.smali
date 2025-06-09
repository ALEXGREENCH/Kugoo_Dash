.class public Lcn/smssdk/b/a;
.super Ljava/lang/Object;
.source "VerifyCodeReader.java"


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Lcn/smssdk/b/a;


# instance fields
.field private a:Lcn/smssdk/utils/SPHelper;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcn/smssdk/b/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcn/smssdk/b/a;->e:Lcn/smssdk/b/a;

    return-void

    nop

    :array_0
    .array-data 2
        -0x6574s
        -0x743fs
        0x7801s
        -0xe6s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcn/smssdk/utils/SPHelper;->getInstance()Lcn/smssdk/utils/SPHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/b/a;->a:Lcn/smssdk/utils/SPHelper;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/smssdk/b/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 18
    sget-object v0, Lcn/smssdk/b/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int v1, v2, p1

    goto :goto_0

    :cond_0
    const-string v0, "Your pin is "

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v1, :cond_1

    add-int/lit8 v1, p1, 0xc

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public static a()Lcn/smssdk/b/a;
    .locals 1

    .line 2
    sget-object v0, Lcn/smssdk/b/a;->e:Lcn/smssdk/b/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/smssdk/b/a;

    invoke-direct {v0}, Lcn/smssdk/b/a;-><init>()V

    sput-object v0, Lcn/smssdk/b/a;->e:Lcn/smssdk/b/a;

    .line 5
    :cond_0
    sget-object v0, Lcn/smssdk/b/a;->e:Lcn/smssdk/b/a;

    return-object v0
.end method

.method static synthetic a(Lcn/smssdk/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/smssdk/b/a;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/smssdk/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\d{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 59
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    const/16 v4, 0x3010

    aput-char v4, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x3011

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/String;

    new-array v4, v1, [C

    aput-char v2, v4, v3

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v5, v1, [C

    aput-char v2, v5, v3

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/String;

    new-array v1, v1, [C

    aput-char v4, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 64
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/mob/commons/SMSSDK;

    invoke-direct {v0}, Lcom/mob/commons/SMSSDK;-><init>()V

    invoke-static {v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[RMS]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcn/smssdk/b/a;->b:Ljava/util/HashMap;

    const-string v3, "originatingAddress"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v0, p0, Lcn/smssdk/b/a;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v0}, Lcn/smssdk/utils/SPHelper;->getSMSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v0, p0, Lcn/smssdk/b/a;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "timestampMillis"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v0, p0, Lcn/smssdk/b/a;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/SPHelper;->setLog(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/telephony/SmsMessage;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMessageBody"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "getOriginatingAddress"

    .line 3
    invoke-static {p1, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "getTimestampMillis"

    .line 4
    invoke-static {p1, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const-string v3, "originatingAddress"

    .line 5
    invoke-direct {p0, v3, v2}, Lcn/smssdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "timestampMillis"

    invoke-direct {p0, v2, p1}, Lcn/smssdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "messageBody"

    .line 7
    invoke-direct {p0, p1, v1}, Lcn/smssdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v1}, Lcn/smssdk/b/a;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-le p1, v2, :cond_4

    .line 12
    invoke-direct {p0, v1}, Lcn/smssdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->CRC32([B)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcn/smssdk/b/a;->a:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v3}, Lcn/smssdk/utils/SPHelper;->getVCodeHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, p1, 0x6

    .line 20
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    .line 22
    invoke-direct {p0, v0, v2}, Lcn/smssdk/b/a;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, p1, 0x4

    .line 23
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 31
    iget-object p1, p0, Lcn/smssdk/b/a;->c:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    if-eqz p1, :cond_2

    .line 35
    invoke-interface {p1, v0}, Lcn/smssdk/SMSSDK$VerifyCodeReadListener;->onReadVerifyCode(Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/smssdk/b/a$a;

    invoke-direct {v0, p0}, Lcn/smssdk/b/a$a;-><init>(Lcn/smssdk/b/a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "operation not in UI Thread"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v0
.end method


# virtual methods
.method public a(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcn/smssdk/b/a;->c:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    return-void
.end method

.method public a(Landroid/telephony/SmsMessage;)Z
    .locals 1

    .line 11
    :try_start_0
    invoke-direct {p0, p1}, Lcn/smssdk/b/a;->b(Landroid/telephony/SmsMessage;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method
