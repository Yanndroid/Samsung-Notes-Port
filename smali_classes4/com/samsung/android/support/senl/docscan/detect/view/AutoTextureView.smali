.class public Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$TextureView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const-string v0, "AutoTextureView"

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->initView(Landroid/content/Context;Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V

    return-void
.end method

.method private getFocusRect()Landroid/graphics/Rect;
    .locals 2

    const-string v0, "AutoTextureView"

    const-string v1, "getFocusRect()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCaptureRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCaptureRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->getSensorActualRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getManualFocusArea(II)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getManualFocusArea(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTextureView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraProperty()Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->getCameraOrientation(II)I

    move-result v0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->getFocusRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->getSensorActualRect()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManualFocusArea(), width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sensorArraySize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", sensorActualSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v9, v7

    int-to-float v0, v0

    div-float/2addr v9, v0

    int-to-float v0, v8

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float/2addr p1, v9

    float-to-int p1, p1

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget v2, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$dimen;->camera_auto_focus_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    div-int/lit8 v3, v2, 0x2

    sub-int v9, p1, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-static {v9, v6, v10}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result v2

    div-int/lit8 v9, v0, 0x2

    sub-int v10, p2, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v11, v0

    invoke-static {v10, v6, v11}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result v0

    add-int/2addr p1, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result p1

    add-int/2addr p2, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v0, v3}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result p2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getManualFocusArea(), cameraWidth : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cameraHeight : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " focus on : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {p1, v3, v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p1

    :cond_3
    :goto_2
    new-instance p1, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p1, p2, v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p1
.end method

.method private getSensorActualRect()Landroid/graphics/Rect;
    .locals 4

    const-string v0, "AutoTextureView"

    const-string v1, "getSensorActualRect()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "getSensorActualRect# CameraAccessException"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const-string v1, "getSensorActualRect# sensorRect is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    return-object v1
.end method


# virtual methods
.method public initView(Landroid/content/Context;Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraProperty()Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/docscan/R$dimen;->camera_auto_focus_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    if-le v4, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    invoke-static {v7, v8, v1}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v6, v5, v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v6, v8

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    invoke-static {v7, v6, v3}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result v3

    :goto_0
    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    invoke-static {v6, v7, v1}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v7, v3, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    invoke-static {v6, v7, v3}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->clamp(III)I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraProperty()Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    invoke-static {v0, v1, v4, v5}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->getManualFocusArea(II)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;->mPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->autoFocus(Landroid/hardware/camera2/params/MeteringRectangle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    return v2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    throw p1
.end method
