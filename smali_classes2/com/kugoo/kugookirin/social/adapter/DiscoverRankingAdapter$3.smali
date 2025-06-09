.class Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;
.super Ljava/lang/Object;
.source "DiscoverRankingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

.field final synthetic val$odoRankingBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;I)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->val$odoRankingBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;

    iput p3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$100(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->val$odoRankingBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getUid()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$200(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Ljava/lang/String;I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)V

    :goto_0
    return-void
.end method
