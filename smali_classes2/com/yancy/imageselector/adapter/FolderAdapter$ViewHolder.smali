.class Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yancy/imageselector/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field folder_image:Landroid/widget/ImageView;

.field folder_name_text:Landroid/widget/TextView;

.field image_num_text:Landroid/widget/TextView;

.field indicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/yancy/imageselector/adapter/FolderAdapter;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/adapter/FolderAdapter;Landroid/view/View;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/yancy/imageselector/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget p1, Lcom/yancy/imageselector/R$id;->folder_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->folder_image:Landroid/widget/ImageView;

    .line 126
    sget p1, Lcom/yancy/imageselector/R$id;->folder_name_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->folder_name_text:Landroid/widget/TextView;

    .line 127
    sget p1, Lcom/yancy/imageselector/R$id;->image_num_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->image_num_text:Landroid/widget/TextView;

    .line 128
    sget p1, Lcom/yancy/imageselector/R$id;->indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 129
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
