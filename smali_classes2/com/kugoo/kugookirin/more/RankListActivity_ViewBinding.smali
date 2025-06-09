.class public Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RankListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/more/RankListActivity;

.field private view7f0a02d2:Landroid/view/View;

.field private view7f0a02d3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/RankListActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/RankListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/RankListActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/more/RankListActivity;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/RankListActivity;

    const-string v0, "field \'imgTopBack\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgTopBack\'"

    .line 36
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/RankListActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;Lcom/kugoo/kugookirin/more/RankListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'txtTitle\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankListActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\'"

    .line 45
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankListActivity;->tvRight:Landroid/widget/TextView;

    const-string v0, "field \'imgRight\' and method \'onClick\'"

    const v1, 0x7f0a02d2

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgRight\'"

    .line 47
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/RankListActivity;->imgRight:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->view7f0a02d2:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;Lcom/kugoo/kugookirin/more/RankListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'rankTab\'"

    .line 55
    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f0a0474

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankListActivity;->rankTab:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "field \'rankViewPager\'"

    .line 56
    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const v2, 0x7f0a0475

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p1, Lcom/kugoo/kugookirin/more/RankListActivity;->rankViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/RankListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/RankListActivity;

    .line 66
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankListActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 67
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankListActivity;->txtTitle:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankListActivity;->tvRight:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankListActivity;->imgRight:Landroid/widget/ImageView;

    .line 70
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankListActivity;->rankTab:Lcom/google/android/material/tabs/TabLayout;

    .line 71
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankListActivity;->rankViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 73
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->view7f0a02d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;->view7f0a02d2:Landroid/view/View;

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
