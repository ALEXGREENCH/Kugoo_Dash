.class Lcn/smssdk/gui/GroupListView$2;
.super Ljava/lang/Object;
.source "GroupListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/GroupListView;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/GroupListView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

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

    .line 84
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {p1}, Lcn/smssdk/gui/GroupListView;->access$400(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {p1}, Lcn/smssdk/gui/GroupListView;->access$500(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$InnerAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result p1

    .line 86
    iget-object p4, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {p4}, Lcn/smssdk/gui/GroupListView;->access$500(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$InnerAdapter;

    move-result-object p4

    invoke-static {p4}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->access$600(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/lit8 p3, p3, -0x1

    iget-object p4, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {p4}, Lcn/smssdk/gui/GroupListView;->access$700(Lcn/smssdk/gui/GroupListView;)Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p4

    sub-int/2addr p3, p4

    .line 87
    iget-object p4, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {p4}, Lcn/smssdk/gui/GroupListView;->access$400(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    move-result-object p4

    iget-object p5, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-interface {p4, p5, p2, p1, p3}, Lcn/smssdk/gui/GroupListView$OnItemClickListener;->onItemClick(Lcn/smssdk/gui/GroupListView;Landroid/view/View;II)V

    :cond_0
    return-void
.end method
