.class public Lcom/lidroid/xutils/view/ViewInjectInfo;
.super Ljava/lang/Object;
.source "ViewInjectInfo.java"


# instance fields
.field public parentId:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 17
    :cond_1
    check-cast p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    .line 19
    iget v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    iget v3, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    if-eq v1, v3, :cond_2

    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2

    .line 22
    :cond_4
    iget-object p1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    add-int/2addr v0, v1

    return v0
.end method
