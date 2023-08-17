.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;
    }
.end annotation


# static fields
.field private static final CONVERT_TO_ALPHA:F = 2.55f

.field private static final CONVERT_TO_PROGRESS_OPACITY:F = 0.9f

.field private static final MIN_OPACITY:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final ZOOM_ACTION_DELAY:J = 0x32L


# instance fields
.field private mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsInitialized:Z

.field private mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private pageHeight:F

.field private pageWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TEAdjustView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x43520000    # 210.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageWidth:F

    const p1, 0x43948000    # 297.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageHeight:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x43520000    # 210.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageWidth:F

    const p1, 0x43948000    # 297.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageHeight:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x43520000    # 210.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageWidth:F

    const p1, 0x43948000    # 297.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageHeight:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    return-object p0
.end method

.method private caculateMargins(II)Landroid/util/Size;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->getInitialMargins()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageWidth:F

    div-float/2addr v1, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageHeight:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageWidth:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageHeight:F

    mul-float/2addr v2, v0

    int-to-float p1, p1

    sub-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    sub-float/2addr p2, v2

    div-float/2addr p2, v0

    float-to-int p2, p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caculateMargins(), horizMargin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vertMargin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private getInitialMargins()Landroid/util/Size;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->isMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v1

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_tablet_port_popup_window_crop_vert_margin:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_tablet_port_crop_vert_margin:I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_port_popup_window_crop_vert_margin:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v0, v2

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_port_crop_vert_margin:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_tablet_land_crop_vert_margin:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_land_crop_vert_margin:I

    :goto_3
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-eqz v0, :cond_6

    move v0, v1

    move v2, v0

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInitialMargins, horiz/vert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public isEditable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateViewSize(II)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->storeEditState()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->caculateMargins(II)Landroid/util/Size;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    invoke-virtual {p4, v0, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->initialize(IIZ)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mIsInitialized:Z

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged, width : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isActionState(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isActionState(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->onActionMove(FF)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->onActionUp()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->onActionDown(FF)V

    :cond_5
    :goto_1
    return v1
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->setDrawableSize(II)V

    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    int-to-float p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr p1, v0

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->getPageWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->getPageWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageWidth:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->getPageHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->pageHeight:F

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;-><init>(Landroid/content/res/Resources;)V

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;Landroid/widget/OverScroller;)V

    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/c;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/a;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    return-void
.end method
