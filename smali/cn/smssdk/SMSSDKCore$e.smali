.class Lcn/smssdk/SMSSDKCore$e;
.super Lcn/smssdk/net/login/d;
.source "SMSSDKCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->a(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/SMSSDKCore;


# direct methods
.method constructor <init>(Lcn/smssdk/SMSSDKCore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$e;->a:Lcn/smssdk/SMSSDKCore;

    invoke-direct {p0}, Lcn/smssdk/net/login/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$e;->a:Lcn/smssdk/SMSSDKCore;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v0, v3, v1, v2}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$e;->a:Lcn/smssdk/SMSSDKCore;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method
