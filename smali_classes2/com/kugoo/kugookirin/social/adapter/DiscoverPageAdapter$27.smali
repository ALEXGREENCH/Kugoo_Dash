.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->deleteDynamic(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
            ">;)V"
        }
    .end annotation

    .line 598
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;

    if-nez p1, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 604
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;->val$finalPos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
