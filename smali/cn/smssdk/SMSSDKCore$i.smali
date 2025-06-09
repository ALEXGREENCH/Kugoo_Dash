.class Lcn/smssdk/SMSSDKCore$i;
.super Ljava/lang/Object;
.source "SMSSDKCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->b(Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$i;->a:Lcn/smssdk/SMSSDKCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x266

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$i;->a:Lcn/smssdk/SMSSDKCore;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method
