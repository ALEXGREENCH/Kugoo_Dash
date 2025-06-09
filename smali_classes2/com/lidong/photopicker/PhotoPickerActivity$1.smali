.class Lcom/lidong/photopicker/PhotoPickerActivity$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPickerActivity;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    iput p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->val$mode:I

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

    .line 126
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lidong/photopicker/ImageGridAdapter;->isShowCamera()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    .line 129
    iget p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->val$mode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$100(Lcom/lidong/photopicker/PhotoPickerActivity;)I

    move-result p1

    iget-object p3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p3}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, p2

    if-ne p1, p3, :cond_0

    .line 132
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$300(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/lidong/photopicker/R$string;->msg_amount_limit:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$400(Lcom/lidong/photopicker/PhotoPickerActivity;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidong/photopicker/Image;

    .line 140
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    iget p3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->val$mode:I

    invoke-static {p2, p1, p3}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$500(Lcom/lidong/photopicker/PhotoPickerActivity;Lcom/lidong/photopicker/Image;I)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidong/photopicker/Image;

    .line 145
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    iget p3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$1;->val$mode:I

    invoke-static {p2, p1, p3}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$500(Lcom/lidong/photopicker/PhotoPickerActivity;Lcom/lidong/photopicker/Image;I)V

    :goto_0
    return-void
.end method
