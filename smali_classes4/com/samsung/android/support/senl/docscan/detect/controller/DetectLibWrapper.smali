.class public abstract Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;
    }
.end annotation


# static fields
.field private static detectResultListener:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "detect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native allocateDirectBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native convertYuvToNV21([Ljava/nio/ByteBuffer;[BII[I[I)Z
.end method

.method public static native createEngine()Z
.end method

.method public static native destroyEngine()V
.end method

.method public static onSmartScanResult(Z[F)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->detectResultListener:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;->onSmartScanResult(Z[F)V

    :cond_0
    return-void
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->detectResultListener:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

    return-void
.end method

.method public static native releaseDirectBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public static setDetectListener(Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->detectResultListener:Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;

    return-void
.end method

.method public static native tracking(II[B)V
.end method
