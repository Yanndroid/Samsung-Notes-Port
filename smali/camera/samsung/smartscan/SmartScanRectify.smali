.class public Lcamera/samsung/smartscan/SmartScanRectify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcamera/samsung/smartscan/SmartScanRectify$SSImage;,
        Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;
    }
.end annotation


# static fields
.field public static final IMAGE_FORMAT_ARGB_8888:I = 0x2

.field public static final IMAGE_FORMAT_BGR:I = 0x0

.field public static final IMAGE_FORMAT_YUV:I = 0x1

.field private static volatile SmartScanJni:Lcamera/samsung/smartscan/SmartScanRectify; = null

.field private static final TAG:Ljava/lang/String; = "SmartScanRectify"

.field public static final aarVersion:Ljava/lang/String; = "2.5.0"

.field private static supportingNewAPI:Z = true


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "Rectify.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcamera/samsung/smartscan/SmartScanRectify;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static synchronized native getVersion()Ljava/lang/String;
.end method

.method public static synchronized native rectify(Landroid/graphics/Bitmap;[FLcamera/samsung/smartscan/SmartScanRectify$SSImage;)I
.end method

.method public static synchronized native rectify(Landroid/graphics/Bitmap;[FLcamera/samsung/smartscan/SmartScanRectify$SSImage;I)I
.end method

.method public static synchronized native rectify([BIII[FLcamera/samsung/smartscan/SmartScanRectify$SSImage;)I
.end method

.method public static synchronized native rectify([BIII[FLcamera/samsung/smartscan/SmartScanRectify$SSImage;I)I
.end method
