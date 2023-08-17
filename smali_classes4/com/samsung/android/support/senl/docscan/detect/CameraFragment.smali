.class public Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;
    }
.end annotation


# static fields
.field private static final DELAY_FOR_RELEASE_IMAGE:J = 0x64L

.field private static final PRECAPTURE_TIMEOUT_MS:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "CameraFragment"

.field private static mDetectExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mAFSupported:Z

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraLayout:Landroid/widget/FrameLayout;

.field private mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

.field private final mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

.field private mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

.field private final mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCaptureTimer:J

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContract:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

.field private mDetectOverlayView:Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

.field private final mDetectResult:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFlashMode:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsDetecting:Z

.field private final mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsTopResumedActivity:Z

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPendingUserCaptures:I

.field private final mPicImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPictureReader:Landroid/media/ImageReader;

.field private mPinnedEdge:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

.field private final mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

.field private mShutterManager:Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

.field private final mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPicImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsDetecting:Z

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectResult:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$8;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPicImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsDetecting:Z

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectResult:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$8;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    return-void
.end method

.method public static bridge synthetic A(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->hitTimeoutLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->initFlashMode()V

    return-void
.end method

.method public static bridge synthetic C(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->isLegacyLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->openCamera(II)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setup3AControlsLocked(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->showRectifyListView()V

    return-void
.end method

.method public static bridge synthetic I(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->showRectifyView()V

    return-void
.end method

.method public static bridge synthetic J(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->takePicture()V

    return-void
.end method

.method public static bridge synthetic K()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->getDetectExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    return p0
.end method

.method private adjustTextureView()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/CommonUtils;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setupTextureView(Landroid/graphics/Point;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->configureTransform(II)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private captureStillPicture()V
    .locals 5

    const-string v0, "CameraFragment"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->WAIT_CONVERGENCE:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "captureStillPicture"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mShutterManager:Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->playShutterSound()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->performHapticTakePicture(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPictureReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setup3AControlsLocked(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v3, v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->getCameraOrientation(II)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mJpegOrientation:I

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v3, v3, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mJpegOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$13;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mImageReader:Landroid/media/ImageReader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureStillPicture# CameraAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private clearDetectView()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsDetecting:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectOverlayView:Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    const/16 v1, 0x8

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->setResult([F)V

    return-void
.end method

.method private closeCamera()V
    .locals 3

    :try_start_0
    const-string v0, "CameraFragment"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mShutterManager:Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->releaseShutterSound()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iput-object v2, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->closeCameraImpl()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mImageReader:Landroid/media/ImageReader;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPictureReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPictureReader:Landroid/media/ImageReader;

    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "CameraFragment"

    const-string v1, "Interrupted while trying to lock camera closing."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method private configureTransform(II)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->ORIENTATIONS:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v9, v9, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    if-eq v8, v9, :cond_1

    const/4 v8, 0x3

    if-ne v8, v9, :cond_2

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sub-float v9, v7, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v6, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2, v2, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    int-to-float v2, v0

    invoke-virtual {v1, v2, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectOverlayView:Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v4, v4, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->setTransform(Landroid/graphics/Matrix;ILandroid/graphics/Point;Landroid/util/Size;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureTransform# viewRotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", PreviewSize : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", viewWidth : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", viewHeight : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraFragment"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private createCameraPreviewSession()V
    .locals 7

    const-string v0, "CameraFragment"

    :try_start_0
    const-string v1, "createCameraPreviewSession"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPictureReader:Landroid/media/ImageReader;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "surfaceTexture is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->setCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v1, v5, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPictureReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCameraPreviewSession# CameraAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    return-object p0
.end method

.method private getAspectRatio(Landroid/graphics/Point;II)Landroid/util/Size;
    .locals 3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    mul-int v2, v1, p2

    div-int/2addr v2, p3

    if-ge v0, v2, :cond_0

    mul-int/2addr v0, p3

    div-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    mul-int/2addr v1, p2

    div-int/2addr v1, p3

    iput v1, p1, Landroid/graphics/Point;->x:I

    :goto_0
    new-instance p2, Landroid/util/Size;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p2, p3, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method

.method private static getDetectExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CameraFragment"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method private handleCameraAccessException(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCameraAccessException# errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCameraAccessException# unexpected errorCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->handleCameraInUseError()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->handleCameraDisconnected()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->handleCameraDisabled()V

    :goto_0
    return-void
.end method

.method private handleCameraDisabled()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/samsung/android/support/senl/docscan/R$string;->camera_access_error_camera_security_policy_prevents_use_of_ps:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->notes_jp:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->notes:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$17;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleCameraDisconnected()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq v1, v2, :cond_0

    const-string v1, "CameraFragment"

    const-string v2, "handleCameraDisconnected# Camera will be paused."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onPauseCamera()V

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CameraFragment"

    const-string v2, "handleCameraDisconnected# Camera was already paused."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsTopResumedActivity:Z

    if-eqz v1, :cond_1

    const-string v1, "CameraFragment"

    const-string v2, "handleCameraDisconnected# Camera should try to open the camera again!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onResumeCamera()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleCameraInUseError()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$16;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;->setContract(Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CameraAccessErrorDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private hitTimeoutLocked()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCaptureTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mContract:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

    return-object p0
.end method

.method private initFlashMode()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->getFlashMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->showFlashOptions(II)V

    return-void
.end method

.method private isLegacyLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectOverlayView:Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsDetecting:Z

    return p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    return p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPinnedEdge:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    return-object p0
.end method

.method private openCamera(II)V
    .locals 4

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera# viewWith : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", viewHeight : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraFragment"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mShutterManager:Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mShutterManager:Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mShutterManager:Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->loadShutterSound()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "openCamera# Time out waiting to lock camera opening."

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera# InterruptedException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera# CameraAccessException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->handleCameraAccessException(I)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    return-object p0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mUIHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method private setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    const-string v1, "CameraFragment"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashMode# flashMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->modeContains([II)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v0, v4

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->modeContains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iget v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    if-eq v2, v1, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    if-nez v4, :cond_5

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v2

    :goto_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->setFlashMode(I)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "setFlashMode# FLASH_UNAVAILABLE or captureRequest is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setUpCameraOutputs()Z
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "CameraFragment"

    const-string v2, "setUpCameraOutputs# camera is null"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v7, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v9, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->setSensorOrientation(Ljava/lang/Integer;)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v11, v7, v10, v9}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->setPreviewSize(Landroid/hardware/camera2/params/StreamConfigurationMap;II)Landroid/util/Size;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    if-nez v9, :cond_3

    :goto_2
    monitor-exit v8

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v11, 0x23

    const/4 v12, 0x2

    invoke-static {v9, v10, v11, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mImageReader:Landroid/media/ImageReader;

    iget-object v10, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v11, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v9, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    iget-object v10, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v9, v7, v10}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->setPictureSize(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    invoke-static {v0, v2, v3, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPictureReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPicImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iput v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    :goto_3
    iput-object v6, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v3, v5}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->setCameraId(Ljava/lang/String;)V

    const-string v3, "CameraFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUpCameraOutputs# cameraId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cameraCharacteristics : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", flashAvailable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catch_0
    move-exception v5

    const-string v6, "CameraFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUpCameraOutputs# IllegalArgumentException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v2, "CameraFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUpCameraOutputs# CameraAccessException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "CameraFragment"

    const-string v2, "setUpCameraOutputs# Cannot found camera id"

    goto/16 :goto_0
.end method

.method private setup3AControlsLocked(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup3AControlsLocked# mAFSupported : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraFragment"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->modeContains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->modeContains([II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private setupTextureView(Landroid/graphics/Point;)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->getAspectRatio(Landroid/graphics/Point;II)Landroid/util/Size;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupTextureView# textureViewSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private showRectifyListView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mContract:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;->showRectifyListView()V

    return-void
.end method

.method private showRectifyView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$14;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startTimerLocked()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCaptureTimer:J

    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mFlashMode:I

    return-void
.end method

.method private takePicture()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->getScanDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-gt v1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/docscan/R$plurals;->can_not_scan_more_than_n_data:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "CameraFragment"

    const-string v1, "takePicture# Can\'t scan more than 50 document at a time"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq v1, v2, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    :try_start_1
    const-string v1, "CameraFragment"

    const-string v2, "takePicture()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->performHapticTakePicture(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCaptureRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mAFSupported:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->isLegacyLocked()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    sget-object v3, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->WAIT_CONVERGENCE:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iput-object v3, v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->startTimerLocked()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "CameraFragment"

    const-string v2, "takePicture# CameraAccessException"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static bridge synthetic u(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsDetecting:Z

    return-void
.end method

.method private updateCameraButtonLayout()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$10;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateCameraLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->adjustTextureView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->updateCameraButtonLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->updateFlashLayout(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->initFlashMode()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPendingUserCaptures:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    return-void
.end method

.method public static bridge synthetic x(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->captureStillPicture()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->configureTransform(II)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->createCameraPreviewSession()V

    return-void
.end method


# virtual methods
.method public destroySmartScan()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->destroyEngine()V

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "CameraFragment"

    const-string v1, "destroySmartScan"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dismissCheckAddToNoteDialog()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CheckAddToNoteDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public finishWithFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mContract:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;->finishWithFailed(Ljava/lang/String;)V

    return-void
.end method

.method public finishWithSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mContract:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public getPreviewCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public getScanDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataCount()I

    move-result v0

    return v0
.end method

.method public getScanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/docscan/model/DocScanData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->updateCameraLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPinnedEdge:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->setStateChangeListener(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPinnedEdge:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->registerSettingsContentObserver()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p3, Lcom/samsung/android/support/senl/docscan/R$layout;->camera_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mPinnedEdge:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->unregisterSettingsContentObserver()V

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "CameraFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->destroySmartScan()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->takePicture()V

    return p1

    :cond_1
    return v1
.end method

.method public onPauseCamera()V
    .locals 2

    const-string v0, "CameraFragment"

    const-string v1, "onPauseCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->closeCamera()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->stopBackgroundThread()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->stopCameraTimer()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onResumeCamera()V
    .locals 3

    const-string v0, "CameraFragment"

    const-string v1, "onResumeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->restartCameraTimer()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->startBackgroundThread()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setUpCameraOutputs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "setUpCameraOutputs failed"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->finishWithFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->updateCameraLayout()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    if-nez v1, :cond_1

    const-string v1, "onResumeCamera# mTextureView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->openCamera(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mTextureView:Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onResumeCamera()V

    return-void
.end method

.method public onStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop# CameraState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onPauseCamera()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->clearDetectView()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsTopResumedActivity:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    invoke-direct {v1, p0, v2, v0, p2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;-><init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    sget p2, Lcom/samsung/android/support/senl/docscan/R$id;->overlay_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectOverlayView:Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    new-instance p1, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;-><init>(Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->initBtnLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->startSmartScan()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsTopResumedActivity:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onResumeCamera()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsTopResumedActivity:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraProperty:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onPauseCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public restartCameraTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraPresenter:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->restartCameraTimer()V

    :cond_0
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mContract:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

    return-void
.end method

.method public showCheckAddToNoteDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->getScanDataCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCheckAddToNoteDialog# scanDataListSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;

    new-instance v2, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$15;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$15;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;-><init>(ILcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "CheckAddToNoteDialog"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startSmartScan()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->createEngine()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mDetectResult:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->setDetectListener(Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mIsRunningDetectLib:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmartScan# result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateThumbnailView(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->mCameraMenu:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->updateThumbnailView(Landroid/graphics/Bitmap;I)V

    return-void
.end method
