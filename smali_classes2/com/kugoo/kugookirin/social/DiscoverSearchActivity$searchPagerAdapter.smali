.class Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "DiscoverSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "searchPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;->this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    .line 178
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;->this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->access$100(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;->this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->access$100(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;->this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->access$000(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
