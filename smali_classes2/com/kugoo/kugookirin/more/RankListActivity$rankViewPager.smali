.class Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "RankListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/more/RankListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rankViewPager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/RankListActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/RankListActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;->this$0:Lcom/kugoo/kugookirin/more/RankListActivity;

    .line 110
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;->this$0:Lcom/kugoo/kugookirin/more/RankListActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankListActivity;->access$100(Lcom/kugoo/kugookirin/more/RankListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;->this$0:Lcom/kugoo/kugookirin/more/RankListActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankListActivity;->access$100(Lcom/kugoo/kugookirin/more/RankListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;->this$0:Lcom/kugoo/kugookirin/more/RankListActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankListActivity;->access$000(Lcom/kugoo/kugookirin/more/RankListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
