.class Lcom/kugoo/kugookirin/more/TrackFragment$6;
.super Ljava/lang/Object;
.source "TrackFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackFragment;->DeleteTrackInfo02(Ljava/lang/String;Ljava/lang/String;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

.field final synthetic val$bean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackFragment;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->val$bean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/TrackFragment$6;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 335
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 336
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$600(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->val$bean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$800(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->val$bean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$800(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$700(Lcom/kugoo/kugookirin/more/TrackFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$000(Lcom/kugoo/kugookirin/more/TrackFragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$600(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 346
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackFragment;->noRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$900(Lcom/kugoo/kugookirin/more/TrackFragment;)Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 348
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$900(Lcom/kugoo/kugookirin/more/TrackFragment;)Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;->getTrajAdapterSize(I)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$000(Lcom/kugoo/kugookirin/more/TrackFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$800(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 352
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$102(Lcom/kugoo/kugookirin/more/TrackFragment;I)I

    .line 353
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$100(Lcom/kugoo/kugookirin/more/TrackFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$6;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$300(Lcom/kugoo/kugookirin/more/TrackFragment;)I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$400(Lcom/kugoo/kugookirin/more/TrackFragment;IILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
