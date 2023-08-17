.class public Lcom/samsung/android/sdk/pen/engine/SpenViewCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenViewCore"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeltaZoom:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

.field public nativeViewCore:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    invoke-static {p2, p3, p0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_construct(JLcom/samsung/android/sdk/pen/engine/SpenViewCore;)Z

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getDeltaZoom(J)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;-><init>(J)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->mDeltaZoom:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativeViewCore is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/engine/SpenViewCore;)Z
.end method

.method private static native Native_getAdvancedPenSetting(J)Ljava/lang/String;
.end method

.method private static native Native_getDeltaZoom(J)J
.end method

.method private static native Native_getPenColor(J)I
.end method

.method private static native Native_getPenParticleDensity(J)I
.end method

.method private static native Native_getPenSize(J)F
.end method

.method private static native Native_getPenStyle(J)Ljava/lang/String;
.end method

.method private static native Native_getToolTypeAction(JI)I
.end method

.method private static native Native_isPenCurveEnabled(J)Z
.end method

.method private static native Native_setPenSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingPenInfo;J)Z
.end method

.method private static native Native_setToolTypeAction(JII)V
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->mDeltaZoom:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->mDeltaZoom:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    return-void
.end method

.method public getAdvancedPenSetting()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getAdvancedPenSetting(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->mDeltaZoom:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    return-object v0
.end method

.method public getPenColor()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getPenColor(J)I

    move-result v0

    return v0
.end method

.method public getPenParticleDensity()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getPenParticleDensity(J)I

    move-result v0

    return v0
.end method

.method public getPenSize()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getPenSize(J)F

    move-result v0

    return v0
.end method

.method public getPenStyle()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getPenStyle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToolTypeAction(I)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_getToolTypeAction(JI)I

    move-result p1

    return p1
.end method

.method public isPenCurveEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_isPenCurveEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenSettingInfo style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    iget-wide v2, p2, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_setPenSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingPenInfo;J)Z

    move-result p1

    return p1
.end method

.method public setToolTypeAction(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->Native_setToolTypeAction(JII)V

    return-void
.end method
