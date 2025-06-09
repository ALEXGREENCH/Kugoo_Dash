.class Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AreaCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaCodeViewHolder"
.end annotation


# instance fields
.field areaCode:Landroid/widget/TextView;

.field areaFlag:Landroid/widget/ImageView;

.field areaItem:Landroid/widget/LinearLayout;

.field areaName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->this$0:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0073

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaItem:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0072

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaFlag:Landroid/widget/ImageView;

    const p1, 0x7f0a0074

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaName:Landroid/widget/TextView;

    const p1, 0x7f0a0070

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaCode:Landroid/widget/TextView;

    return-void
.end method
