.class Lcn/smssdk/SMSSDKCore$12;
.super Lcom/mob/tools/FakeActivity;
.source "SMSSDKCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/SMSSDKCore;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcn/smssdk/SMSSDKCore;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$12;->this$0:Lcn/smssdk/SMSSDKCore;

    iput p2, p0, Lcn/smssdk/SMSSDKCore$12;->val$event:I

    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/smssdk/SMSSDKCore$12$a;

    invoke-direct {v1, p0, p1}, Lcn/smssdk/SMSSDKCore$12$a;-><init>(Lcn/smssdk/SMSSDKCore$12;Ljava/util/HashMap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
