.class public Lcom/samsung/android/smartscan/SmartScanRectify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;,
        Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;,
        Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;
    }
.end annotation


# static fields
.field public static final EXECUTE_MODE_RECTIFY:I = 0x0

.field public static final EXECUTE_MODE_SHADOW_REMOVAL:I = 0x1

.field public static final IMAGE_FORMAT_RGB:I = 0x0

.field private static volatile SmartScanJni:Lcom/samsung/android/smartscan/SmartScanRectify; = null

.field private static final TAG:Ljava/lang/String; = "SmartScanRectify"

.field public static final aarVersion:Ljava/lang/String; = "2.7.1"

.field public static activatedAARVer:Ljava/lang/String; = null

.field public static existNativeWrapper:Z = true

.field private static initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static smartScanEventListener:Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

.field private static taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

.field public static taskManager:Lcom/samsung/android/smartscan/TaskManager/TaskManager;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->smartScanEventListener:Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    new-instance v0, Lcom/samsung/android/smartscan/SmartScanRectify$1;

    invoke-direct {v0}, Lcom/samsung/android/smartscan/SmartScanRectify$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

    new-instance v2, Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;-><init>(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;)V

    sput-object v2, Lcom/samsung/android/smartscan/SmartScanRectify;->taskManager:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    const-string v0, "2.7.1"

    sput-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    :try_start_0
    const-string v0, "DocRectifyWrapper.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "Rectify.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "2.5.0"

    sput-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/smartscan/SmartScanRectify;->existNativeWrapper:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v0, "0.0"

    sput-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has been activated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartscan/SmartScanRectify;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private static RectifyForCamera(Landroid/graphics/Bitmap;[FILandroid/graphics/Bitmap;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->init()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->smartScanEventListener:Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    return-object v0
.end method

.method public static synthetic access$400()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->deinit()Z

    move-result v0

    return v0
.end method

.method private calledByCameraApp()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static convert2_5_xSSImageToSSImage(Lcamera/samsung/smartscan/SmartScanRectify$SSImage;Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;)V
    .locals 1

    iget v0, p0, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->height:I

    iput v0, p1, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->height:I

    iget v0, p0, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->width:I

    iput v0, p1, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->width:I

    iget-object p0, p0, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->ImageData:[B

    iput-object p0, p1, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->ImageData:[B

    return-void
.end method

.method private static convertSSImageTo2_5_xSSImage(Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;Lcamera/samsung/smartscan/SmartScanRectify$SSImage;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->height:I

    iput v0, p1, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->height:I

    iget v0, p0, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->width:I

    iput v0, p1, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->width:I

    iget-object p0, p0, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->ImageData:[B

    iput-object p0, p1, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->ImageData:[B

    return-void
.end method

.method private static synchronized native deinit()Z
.end method

.method public static deinitialize()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/smartscan/SmartScanRectify;->existNativeWrapper:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->taskManager:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    sget-object v1, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Deinit:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->requestNewTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static execute(Landroid/graphics/Bitmap;[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->waitAndGetInitStatus()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/smartscan/SmartScanRectify;->existNativeWrapper:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/smartscan/SmartScanRectify;->rectify(Landroid/graphics/Bitmap;[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    const-string p1, "rectify function is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rectify("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") has been executed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static execute(Landroid/graphics/Bitmap;[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;II)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->waitAndGetInitStatus()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/smartscan/SmartScanRectify;->existNativeWrapper:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/smartscan/SmartScanRectify;->rectify(Landroid/graphics/Bitmap;[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;II)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    const-string p1, "rectify function is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rectify("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") has been executed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static execute([BIII[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I
    .locals 8

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->waitAndGetInitStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/smartscan/SmartScanRectify;->existNativeWrapper:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/smartscan/SmartScanRectify;->rectify([BIII[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance v7, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;

    invoke-direct {v7}, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;-><init>()V

    invoke-static {p5, v7}, Lcom/samsung/android/smartscan/SmartScanRectify;->convertSSImageTo2_5_xSSImage(Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;Lcamera/samsung/smartscan/SmartScanRectify$SSImage;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v7

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcamera/samsung/smartscan/SmartScanRectify;->rectify([BIII[FLcamera/samsung/smartscan/SmartScanRectify$SSImage;I)I

    move-result p0

    invoke-static {v7, p5}, Lcom/samsung/android/smartscan/SmartScanRectify;->convert2_5_xSSImageToSSImage(Lcamera/samsung/smartscan/SmartScanRectify$SSImage;Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "rectify("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/samsung/android/smartscan/SmartScanRectify;->activatedAARVer:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") has been executed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static synchronized native init()Z
.end method

.method public static initialize()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/smartscan/SmartScanRectify;->existNativeWrapper:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->taskManager:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    sget-object v1, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Init:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->requestNewTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static synchronized native rectify(Landroid/graphics/Bitmap;[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I
.end method

.method private static synchronized native rectify(Landroid/graphics/Bitmap;[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;II)I
.end method

.method private static synchronized native rectify([BIII[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I
.end method

.method private static waitAndGetInitStatus()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/smartscan/SmartScanRectify;->TAG:Ljava/lang/String;

    const-string v2, "Wait init for 3 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/smartscan/SmartScanRectify;->initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_1
    sget-object v0, Lcom/samsung/android/smartscan/SmartScanRectify;->initDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setOnSmartScanEventListener(Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/smartscan/SmartScanRectify;->smartScanEventListener:Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    return-void
.end method
