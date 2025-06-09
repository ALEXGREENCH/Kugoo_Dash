.class public Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public nfcCardId:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    .line 118
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03f5

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->nfcCardId:Landroid/widget/TextView;

    return-void
.end method
