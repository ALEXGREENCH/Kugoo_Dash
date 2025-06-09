.class Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;
.super Ljava/lang/Object;
.source "ShareUploadUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/view/ShareUploadUtil$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/view/ShareUploadUtil$1;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/ShareUploadUtil$1;Lrx/Subscriber;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;->this$1:Lcom/kugoo/kugookirin/view/ShareUploadUtil$1;

    iput-object p2, p0, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    iget-object p2, p0, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    .line 91
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 98
    iget-object p2, p0, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    .line 99
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    return-void
.end method
