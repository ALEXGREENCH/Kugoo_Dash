.class Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;
.super Ljava/lang/Object;
.source "InfoHintAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;->seeDetailItem(I)V

    :cond_0
    return-void
.end method
