.class public Lcom/samsung/android/sdk/pen/engine/SpenPenSound;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MINIMUM_TOUCH_COUNT_TO_PLAY_SOUND:I = 0x2

.field private static final REMOVER_MAX_SIZE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "SpenPenSound"

.field private static final penNameAirBrushPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.AirBrushPen"

.field private static final penNameBrush:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Brush"

.field private static final penNameBrushPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.BrushPen"

.field private static final penNameChineseBrush:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

.field private static final penNameColoredPencil:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

.field private static final penNameCrayon:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Crayon"

.field private static final penNameEraser:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Eraser"

.field private static final penNameFountainPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FountainPen"

.field private static final penNameInkPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.InkPen"

.field private static final penNameMagicPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field private static final penNameMarker:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker"

.field private static final penNameMosaicPen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

.field private static final penNameObliquePen:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

.field private static final penNameOilBrush:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.OilBrush"

.field private static final penNamePencil:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Pencil"

.field private static final penNameSmudge:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Smudge"

.field private static final penNameStraightHighlighter:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

.field private static final penNameStraightMarker:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

.field private static final penNameWaterColorBrush:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"


# instance fields
.field private mActivePen:I

.field private mContext:Landroid/content/Context;

.field private mEraserSize:F

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIndexBrush:I

.field private mIndexEraser:I

.field private mIndexMarker:I

.field private mIndexPencil:I

.field private mIsEnabled:Z

.field private mIsPlaySound:Z

.field private mIsStrokeRemover:Z

.field private mIsSupportPenSound:Z

.field private mPenSize:F

.field private mRemoverSize:F

.field private mSmpsManager:Lcom/samsung/audio/SmpsManager;

.field private mTouchCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexPencil:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexMarker:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexBrush:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexEraser:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mActivePen:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsPlaySound:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mTouchCount:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsStrokeRemover:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pen/engine/SpenPenSound;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->lambda$onTouch$0(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private convertMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :cond_0
    sget v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_UP:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_CANCEL:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private createSmpsManager()V
    .locals 4

    const-string v0, "SpenPenSound"

    const-string v1, "createSmpsManager() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/samsung/audio/SmpsManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/audio/SmpsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexPencil:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexMarker:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexBrush:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/audio/SmpsManager;->getPenIndex(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexEraser:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mActivePen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexPencil:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mActivePen:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "createSmpsManager() - Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    const-string v2, "Smps is disabled in this model - SmpsManager() New is failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->destroySmpsManager()V

    :goto_2
    return-void
.end method

.method private destroyExecutor()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private destroySmpsManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenPenSound"

    const-string v1, "destroySmpsManager() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {v1}, Lcom/samsung/audio/SmpsManager;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const-string v1, "destroySmpsManager() - End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized generateSoundByTouch(Landroid/view/MotionEvent;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsPlaySound:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->isActionNeedSound(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsPlaySound:Z

    const-string v0, "SpenPenSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateSoundByTouch toolTypeAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mActivePen="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {p2}, Lcom/samsung/audio/SmpsManager;->getActivePen()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {p2, p1}, Lcom/samsung/audio/SmpsManager;->generateSound(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "SpenPenSound"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSoundByTouch mIsPlaySound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsPlaySound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isActionNeedSound(toolTypeAction) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->isActionNeedSound(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", toolTypeAction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initSmpsManagerActivePen(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexPencil:I

    invoke-virtual {v0, p1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mEraserSize:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->getMaximumPenSize(Landroid/content/Context;Ljava/lang/String;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsStrokeRemover:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mActivePen:I

    invoke-virtual {v0, p1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mPenSize:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexEraser:I

    invoke-virtual {v0, p1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mRemoverSize:F

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    :try_start_1
    const-string p1, "SpenPenSound"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSmpsManagerActivePen mSmpsManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSupportPenSound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isActionNeedSound(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPenStyleBrush(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.OilBrush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.AirBrushPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Smudge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPenStyleInk(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Crayon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPenStyleMarker(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$onTouch$0(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->touchParallel(Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private onPlayPenSound()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->playPenSound()V

    return-void
.end method

.method private setPenThickness(Ljava/lang/String;F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->getMinimumPenSize(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->getMaximumPenSize(Landroid/content/Context;Ljava/lang/String;)F

    move-result v1

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    :goto_0
    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/audio/SmpsManager;->setThickness(D)Z

    goto :goto_2

    :cond_0
    cmpl-float p1, p2, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    sub-float/2addr p2, v0

    sub-float/2addr v1, v0

    div-float/2addr p2, v1

    :goto_1
    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mPenSize:F

    goto :goto_0

    :goto_2
    return-void
.end method

.method private touchParallel(Landroid/view/MotionEvent;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mTouchCount:I

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mTouchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mTouchCount:I

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mTouchCount:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->initSmpsManagerActivePen(I)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mTouchCount:I

    if-lt v0, v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->generateSoundByTouch(Landroid/view/MotionEvent;I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "touchParallel mSmpsManager : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mIsEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsSupportPenSound : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPenSound"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->destroyExecutor()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->unregisterPenSoundSolution()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsStrokeRemover:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->convertMotionEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/a;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenPenSound;Landroid/view/MotionEvent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playPenSound()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsPlaySound:Z

    return-void
.end method

.method public declared-synchronized registerPenSoundSolution()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "SpenPenSound"

    const-string v1, "Smps is disabled in this model - Application do not have BLUETOOTH permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->destroySmpsManager()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    :try_start_3
    const-string v0, "SpenPenSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smps is disabled in this model by SmpsManager.isSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->createSmpsManager()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_6
    const-string v0, "SpenPenSound"

    const-string v1, "Smps is disabled in this model by NoSuchFieldError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    :try_start_7
    const-string v0, "SpenPenSound"

    const-string v1, "Smps is disabled in this model by ExceptionInInitializerError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    :try_start_8
    const-string v0, "SpenPenSound"

    const-string v1, "Smps is disabled in this model by NoClassDefFoundError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catch_3
    :try_start_9
    const-string v0, "SpenPenSound"

    const-string v1, "Smps is disabled in this model by UnsatisfiedLinkError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsEnabled:Z

    return-void
.end method

.method public setEraserSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mEraserSize:F

    return-void
.end method

.method public declared-synchronized setPenStyle(Ljava/lang/String;F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIsSupportPenSound:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->isPenStyleInk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexPencil:I

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mActivePen:I

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->isPenStyleBrush(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexBrush:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->isPenStyleMarker(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mIndexMarker:I

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mSmpsManager:Lcom/samsung/audio/SmpsManager;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mActivePen:I

    invoke-virtual {v0, v1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setPenThickness(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRemoverSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->mRemoverSize:F

    return-void
.end method

.method public declared-synchronized unregisterPenSoundSolution()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->destroySmpsManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
