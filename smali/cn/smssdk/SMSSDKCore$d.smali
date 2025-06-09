.class Lcn/smssdk/SMSSDKCore$d;
.super Lcn/smssdk/wrapper/a;
.source "SMSSDKCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/smssdk/wrapper/a<",
        "Lcn/smssdk/wrapper/TokenVerifyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/SMSSDKCore;


# direct methods
.method constructor <init>(Lcn/smssdk/SMSSDKCore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$d;->a:Lcn/smssdk/SMSSDKCore;

    invoke-direct {p0}, Lcn/smssdk/wrapper/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/smssdk/wrapper/TokenVerifyException;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$d;->a:Lcn/smssdk/SMSSDKCore;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcn/smssdk/wrapper/TokenVerifyResult;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$d;->a:Lcn/smssdk/SMSSDKCore;

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/smssdk/wrapper/TokenVerifyResult;

    invoke-virtual {p0, p1}, Lcn/smssdk/SMSSDKCore$d;->a(Lcn/smssdk/wrapper/TokenVerifyResult;)V

    return-void
.end method
