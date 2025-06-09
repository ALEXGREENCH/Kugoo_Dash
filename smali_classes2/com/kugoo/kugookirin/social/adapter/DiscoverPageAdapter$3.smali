.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_POPULAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    iget p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;->val$finalPos:I

    sput p1, Lcom/kugoo/kugookirin/social/PopularFragment;->freshItemPos:I

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;->val$finalPos:I

    const-string v1, "currentDynamic"

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;ILjava/lang/String;)V

    return-void
.end method
