.class public Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenTypeClassifier"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->mNativeHandle:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpenTypeClassifier is created! [mNativeHandle : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->mNativeHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenTypeClassifier"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native Native_finalize(J)V
.end method

.method private native Native_isHandwrittenImage(JLandroid/graphics/Bitmap;)Z
.end method

.method private native Native_isPrintedImage(JLandroid/graphics/Bitmap;)Z
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->mNativeHandle:J

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->close()V

    return-void
.end method

.method public isHandwrittenImage(Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->Native_isHandwrittenImage(JLandroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPrintedImage(Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;->Native_isPrintedImage(JLandroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
