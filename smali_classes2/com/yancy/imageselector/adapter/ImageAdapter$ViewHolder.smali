.class Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yancy/imageselector/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field photo_check:Landroid/widget/ImageView;

.field photo_image:Landroid/widget/ImageView;

.field photo_mask:Landroid/view/View;

.field final synthetic this$0:Lcom/yancy/imageselector/adapter/ImageAdapter;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/adapter/ImageAdapter;Landroid/view/View;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->this$0:Lcom/yancy/imageselector/adapter/ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget p1, Lcom/yancy/imageselector/R$id;->photo_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_image:Landroid/widget/ImageView;

    .line 162
    sget p1, Lcom/yancy/imageselector/R$id;->photo_mask:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_mask:Landroid/view/View;

    .line 163
    sget p1, Lcom/yancy/imageselector/R$id;->photo_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_check:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
