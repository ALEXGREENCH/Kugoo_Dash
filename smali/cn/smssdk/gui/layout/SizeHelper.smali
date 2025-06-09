.class public Lcn/smssdk/gui/layout/SizeHelper;
.super Ljava/lang/Object;
.source "SizeHelper.java"


# static fields
.field public static final DESIGNED_DENSITY:F = 1.5f

.field public static final DESIGNED_SCREEN_WIDTH:I = 0x21c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromDp(Landroid/content/Context;I)I
    .locals 1

    .line 40
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 41
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;FI)I

    move-result p0

    return p0
.end method

.method public static fromPx(Landroid/content/Context;I)I
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 24
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;FI)I

    move-result p0

    return p0
.end method

.method public static fromPxWidth(Landroid/content/Context;I)I
    .locals 1

    const/16 v0, 0x21c

    .line 32
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
