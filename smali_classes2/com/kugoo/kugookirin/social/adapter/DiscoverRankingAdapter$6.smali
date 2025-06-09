.class Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;
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

.field final synthetic val$socialRankingBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->val$socialRankingBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$100(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->val$socialRankingBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)V

    :goto_0
    return-void
.end method
