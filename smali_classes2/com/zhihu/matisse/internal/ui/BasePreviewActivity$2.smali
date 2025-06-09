.class Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;
.super Ljava/lang/Object;
.source "BasePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 154
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->access$200(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    sget v2, Lcom/zhihu/matisse/R$string;->error_over_original_count:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 156
    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1, v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-boolean v1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    .line 164
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->access$300(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    move-result-object p1

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 165
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    if-nez p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->access$300(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-interface {p1, v0}, Lcom/zhihu/matisse/listener/OnCheckedListener;->onCheck(Z)V

    :cond_2
    return-void
.end method
