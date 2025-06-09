.class Lcom/kugoo/kugookirin/utils/RouteUtils$3;
.super Ljava/lang/Object;
.source "RouteUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/utils/RouteUtils;->getNearbyPlace(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public ItemSize:I

.field final synthetic val$dataList:Ljava/util/ArrayList;

.field final synthetic val$languageTpe:I


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->val$languageTpe:I

    iput-object p2, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->val$dataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "response=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "testHttp"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 333
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/bean/NearBySearchBean;

    const-string v0, "OK"

    .line 334
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "nearbySearchResult"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 336
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->getResults()Ljava/util/List;

    move-result-object v0

    .line 337
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->getNext_page_token()Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 340
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->ItemSize:I

    goto :goto_0

    .line 343
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    iput p2, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->ItemSize:I

    :goto_0
    move p2, v2

    .line 346
    :goto_1
    iget v3, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->ItemSize:I

    if-ge p2, v3, :cond_5

    .line 347
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 351
    :cond_2
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->getName()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->getVicinity()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 355
    iget v5, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->val$languageTpe:I

    if-nez v5, :cond_3

    const-string v5, "[a-zA-Z+]"

    const-string v6, ""

    .line 356
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u7b2c"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   name=="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  vicinity=="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "nearbySearchResult0002"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v5, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    invoke-direct {v5}, Lcom/kugoo/kugookirin/bean/PublishLocBean;-><init>()V

    .line 368
    invoke-virtual {v5, v2}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setCheck(Z)V

    .line 370
    invoke-virtual {v5, v4}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setDetailLoc(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v5, v3}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setRougeLoc(Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->val$dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 378
    :cond_5
    invoke-static {}, Lcom/kugoo/kugookirin/utils/RouteUtils;->access$100()Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 379
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->val$dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/kugoo/kugookirin/utils/RouteUtils;->access$100()Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/RouteUtils$3;->val$dataList:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;->nearbySearchResult(Ljava/util/ArrayList;)V

    .line 383
    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "saleOnresume004"

    const/16 v1, 0x7d0

    if-le p2, v1, :cond_7

    .line 384
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 388
    :cond_7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
