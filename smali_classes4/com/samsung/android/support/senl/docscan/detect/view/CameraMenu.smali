.class public Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraMenu"


# instance fields
.field private final mCameraLayout:Landroid/widget/FrameLayout;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mTakePictureBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->getFlashAutoImageFromFlashMode(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->getFlashButtonImageLevelFromFlashMode(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->getFlashOffImageFromFlashMode(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->getFlashOnImageFromFlashMode(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->updateFlashAutoContentDescription()V

    return-void
.end method

.method private getFlashAutoImageFromFlashMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_auto_on:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_auto:I

    return p1

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_auto:I

    return p1
.end method

.method private getFlashButtonImageLevelFromFlashMode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getFlashOffImageFromFlashMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_off:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_off:I

    return p1

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_off_on:I

    return p1
.end method

.method private getFlashOnImageFromFlashMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_always:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_always_on:I

    return p1

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/docscan/R$drawable;->ic_camera_flash_always:I

    return p1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->updateFlashButtonContentDescription(I)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->updateFlashOffContentDescription()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->updateFlashOnContentDescription()V

    return-void
.end method

.method private updateFlashAutoContentDescription()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->auto:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->flash:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFlashButtonContentDescription(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v2, Lcom/samsung/android/support/senl/docscan/R$id;->flash_auto:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/support/senl/docscan/R$id;->flash_on:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v4, Lcom/samsung/android/support/senl/docscan/R$id;->flash_off:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFlashOffContentDescription()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_off:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->flash:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFlashOnContentDescription()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_on:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$string;->flash:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public activeTakePictureBtn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mTakePictureBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method public initBtnLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->thumbnail:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->take_picture:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mTakePictureBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mTakePictureBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->add_to_note:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabled(Landroid/view/View;)V

    return-void
.end method

.method public performHapticTakePicture(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mTakePictureBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mTakePictureBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->performHapticFeedback(Landroid/view/View;I)V

    return-void
.end method

.method public setFlashModeActivated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;-><init>(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFlashOptions(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;-><init>(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCameraBtnLayout(Landroid/content/Context;Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraBtnLayout# orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraMenu"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v2, Lcom/samsung/android/support/senl/docscan/R$id;->camera_btn_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/docscan/R$layout;->camera_btn_layout_port:I

    if-nez v1, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget v2, Lcom/samsung/android/support/senl/docscan/R$layout;->camera_btn_layout_land:I

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const v4, 0x800055

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v4, 0x2

    const/4 v5, -0x2

    if-eqz v1, :cond_1

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/samsung/android/support/senl/docscan/R$dimen;->camera_btn_layout_height:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v0, v4, :cond_3

    const v0, 0x800015

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$dimen;->camera_btn_layout_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$dimen;->camera_btn_layout_margin_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->initBtnLayout()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->loadThumbnail()V

    return-void
.end method

.method public updateFlashLayout(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$layout;->camera_flash_layout_land:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$layout;->camera_flash_layout_port:I

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public updateThumbnailView(Landroid/graphics/Bitmap;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->thumbnail:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/samsung/android/support/senl/docscan/R$id;->thumbnail_container:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->add_to_note_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v2, Lcom/samsung/android/support/senl/docscan/R$id;->thumbnail_shadow:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->mCameraLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/support/senl/docscan/R$id;->thumbnail_count:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-lez p2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    if-lez p2, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    if-le p2, p1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-le p2, p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
