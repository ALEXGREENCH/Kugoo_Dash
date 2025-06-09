.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->dealGridView(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field final synthetic val$imageUrls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;->val$imageUrls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 711
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;->val$imageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->imageBrowser(ILjava/util/ArrayList;)V

    return-void
.end method
