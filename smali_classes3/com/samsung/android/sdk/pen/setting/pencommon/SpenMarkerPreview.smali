.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenMarkerPreview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.source "SourceFile"


# static fields
.field private static final MARKER_PREVIEW_POINT_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpenMarkerPreview"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getMoreSideSpace(Landroid/content/Context;F)F
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ffc000000000000L    # 1.75

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Density= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " strokeSize="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " moreSpace="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenMarkerPreview"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public calculatePoints(Landroid/view/View;F)I
    .locals 5

    const/4 v0, 0x4

    const v1, 0x3f333333    # 0.7f

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v2

    int-to-float v0, v0

    const v3, 0x402ccccd    # 2.7f

    div-float v3, p2, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenMarkerPreview;->getMoreSideSpace(Landroid/content/Context;F)F

    move-result p2

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p2, v3

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    add-float/2addr p1, p2

    int-to-float p2, v1

    div-float/2addr p2, v3

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPoint(FFF)V

    return v2
.end method

.method public getPressure(I)F
    .locals 0

    const p1, 0x3f333333    # 0.7f

    return p1
.end method
