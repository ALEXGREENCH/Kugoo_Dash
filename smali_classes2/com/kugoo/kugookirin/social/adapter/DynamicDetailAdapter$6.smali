.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;
.super Ljava/lang/Object;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dealGrideView(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field final synthetic val$imageUrls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;->val$imageUrls:Ljava/util/ArrayList;

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

    .line 441
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;->val$imageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->imageBrowser(ILjava/util/ArrayList;)V

    return-void
.end method
