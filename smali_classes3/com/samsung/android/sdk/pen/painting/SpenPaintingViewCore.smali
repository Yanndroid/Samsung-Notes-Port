.class public Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;
.super Lcom/samsung/android/sdk/pen/engine/SpenViewCore;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPaintingViewCore"


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;-><init>(Landroid/content/Context;J)V

    const-string p1, "SpenPaintingViewCore"

    const-string v0, "SpenPaintingViewCore Native_construct start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3, p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;->Native_construct(JLcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;)Z

    const-string p2, "SpenPaintingViewCore Native_construct end"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;)Z
.end method

.method private static native Native_getEraserSize(J)F
.end method

.method private static native Native_getEraserStyle(J)Ljava/lang/String;
.end method

.method private static native Native_setEraserSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingPenInfo;J)Z
.end method


# virtual methods
.method public getEraserSize()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;->Native_getEraserSize(J)F

    move-result v0

    return v0
.end method

.method public getEraserStyle()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;->Native_getEraserStyle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Z
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

    const-string/jumbo v1, "setEraserSettingInfo style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaintingViewCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->nativeViewCore:J

    iget-wide v2, p2, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;->Native_setEraserSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingPenInfo;J)Z

    move-result p1

    return p1
.end method
