.class public Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final CAMERA_TIMEOUT:I = 0x1d4c0

.field private static final FOCUSING:Ljava/lang/String; = "FOCUSING"

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field public static final MSG_EXPIRED_TIMER:I = 0x4

.field public static final MSG_FOCUS_ANIM:I = 0x1

.field public static final MSG_SHOW_TOAST:I = 0x2

.field public static final MSG_THUMBNAIL_UPDATE:I = 0x3

.field private static final STOP_FOCUS:Ljava/lang/String; = "STOP_FOCUS"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

.field private mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mDocUuid:Ljava/lang/String;

.field private final mHandlerMessage:Landroid/os/Handler;

.field private final mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSaveFilePath:Ljava/lang/String;

.field private final mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

.field private mSensorOrientation:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CameraPresenter"

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mHandlerMessage:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "INTENT_PATH_TO_SAVE"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "scan_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mSaveFilePath:Ljava/lang/String;

    const-string p1, "INTENT_SDOC_UUID"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mDocUuid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->runAfterAF(J)V

    return-void
.end method

.method private choosePictureOptimalSize([Landroid/util/Size;II)Landroid/util/Size;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-le p3, p2, :cond_1

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    int-to-float p3, p3

    div-float p3, p2, p3

    :goto_0
    const p2, 0x3e4ccccd    # 0.2f

    move v1, p2

    move-object v2, v0

    :goto_1
    cmpg-float v3, v1, p3

    if-gez v3, :cond_6

    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, p3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_3

    :cond_2
    move-object v2, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-float/2addr v1, p2

    goto :goto_1

    :cond_6
    :goto_3
    const-string p1, "CameraPresenter"

    if-nez v2, :cond_7

    const-string p2, "choosePictureOptimalSize# pictureSize is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "choosePictureOptimalSize# pictureSize :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private choosePreviewOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p6}, Landroid/util/Size;->getHeight()I

    move-result p6

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, p4, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, p5, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, p6

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p2, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, p3, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/a;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p1, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/a;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1

    :cond_4
    const-string p2, "CameraPresenter"

    const-string p3, "choosePreviewOptimalSize# Couldn\'t find any suitable preview size"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p1, v4

    return-object p1
.end method

.method private getScanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/docscan/model/DocScanData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isMeteringAreaAFSupported()Z
    .locals 4

    const-string v0, "CameraPresenter"

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMeteringAreaAFSupported() support : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    const-string v1, "isMeteringAreaAFSupported# CameraAccessException"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private runAfterAF(J)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runAfterAF - delay time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->getPreviewCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runAfterAF, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$3;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startCameraTimer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mHandlerMessage:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public autoFocus(Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFocus# state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    :try_start_0
    new-instance v2, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$2;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v5, "STOP_FOCUS"

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v5, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->isMeteringAreaAFSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v6, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v6, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v0, "FOCUSING"

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "autoFocus# CameraAccessException"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public closeCameraImpl()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mHandlerMessage:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraProperty()Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    return-object v0
.end method

.method public getCaptureRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method public getPreviewRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSensorOrientation()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mSensorOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public loadThumbnail()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getScanDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getBitmapImageFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->updateThumbnailView(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public makeDocScanData(Landroid/media/Image;[Landroid/graphics/PointF;)Lcom/samsung/android/support/senl/docscan/model/DocScanData;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDocScanData# resultPoints : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v5, v4, [B

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    if-nez v10, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "makeDocScanData# The directory was not created"

    invoke-static {v2, v10}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mDocUuid:Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mDocUuid:Ljava/lang/String;

    invoke-static {v14}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getEditingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-direct {v12, v1, v6, v10, v7}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/PointF;)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v7, v7, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mJpegOrientation:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-static {v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x0

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v9, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeDocScanData scanPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setScanBitmap(Landroid/graphics/Bitmap;)V

    return-object v12

    :cond_2
    return-object v11
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mSaveFilePath:Ljava/lang/String;

    const-string v1, "scan_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTENT_PATH_TO_SAVE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mDocUuid:Ljava/lang/String;

    const-string v1, "INTENT_SDOC_UUID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restartCameraTimer()V
    .locals 2

    const-string v0, "CameraPresenter"

    const-string v1, "restartCameraTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->stopCameraTimer()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->startCameraTimer()V

    return-void
.end method

.method public setCameraCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public setCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method

.method public setPictureSize(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->choosePictureOptimalSize([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "CameraPresenter"

    const-string p2, "setPictureSize# there is not supportedImageSizes"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPreviewSize(Landroid/hardware/camera2/params/StreamConfigurationMap;II)Landroid/util/Size;
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    const-string v8, "CameraPresenter"

    if-nez v1, :cond_0

    const-string v0, "setPreviewSize# supportedYuvSizes is null"

    :goto_0
    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "setPreviewSize# supportedTextureSizes is null"

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    iget-object v4, v7, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mSensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->getCameraOrientation(II)I

    move-result v0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, v7, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x10e

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_4

    move/from16 v10, p2

    move/from16 v9, p3

    move v14, v5

    move v5, v4

    move v4, v14

    goto :goto_3

    :cond_4
    move/from16 v9, p2

    move/from16 v10, p3

    :goto_3
    const/16 v0, 0x780

    if-le v5, v0, :cond_5

    move v11, v0

    goto :goto_4

    :cond_5
    move v11, v5

    :goto_4
    const/16 v0, 0x438

    if-le v4, v0, :cond_6

    move v12, v0

    goto :goto_5

    :cond_6
    move v12, v4

    :goto_5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$CompareSizesByArea;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/Size;

    move-object v0, p0

    move-object v1, v3

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->choosePreviewOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize# previewSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rotatedPreviewWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rotatedPreviewHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxPreviewWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxPreviewHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", largest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setSensorOrientation(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mSensorOrientation:Ljava/lang/Integer;

    return-void
.end method

.method public startBackgroundThread()V
    .locals 2

    const-string v0, "CameraPresenter"

    const-string v1, "startBackgroundThread"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public declared-synchronized startPreviewRepeating()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewRepeating# CameraState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v2, v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mIFragment:Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->getPreviewCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_3
    const-string v1, "CameraPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRepeating# error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopBackgroundThread()V
    .locals 2

    const-string v0, "CameraPresenter"

    const-string v1, "stopBackgroundThread"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "stopBackgroundThread# InterruptedException"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public stopCameraTimer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->mHandlerMessage:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
