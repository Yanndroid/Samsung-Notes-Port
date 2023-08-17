.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenBrushPenPreview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.source "SourceFile"


# static fields
.field private static final BRUSHPEN_PRESSURE_DP:F = 0.03f

.field private static final BRUSHPEN_PREVIEW_POINT_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SpenBrushPenPreview"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculatePoints(Landroid/view/View;F)I
    .locals 4

    const/16 v0, 0xa

    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->checkDeltaValue(Landroid/view/View;IF)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, p2, v2

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    int-to-float p2, v0

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    div-float/2addr p2, v0

    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPoint(FFF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result p1

    return p1
.end method
