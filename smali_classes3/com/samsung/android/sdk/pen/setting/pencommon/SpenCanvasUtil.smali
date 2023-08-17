.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenCanvasUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCREEN_WIDTH_WQHD:I = 0x5a0

.field public static final SCREEN_WIDTH_WQHD_TB:I = 0x5f0

.field public static final SCREEN_WIDTH_WQHD_TB_SPECIAL:I = 0x5fc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanvasSize(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/16 v0, 0x5a0

    if-eqz p0, :cond_1

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const/16 p0, 0x5f0

    if-eq v1, p0, :cond_3

    const/16 p0, 0x5fc

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static getDeviceCanvasSize(Landroid/content/Context;)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenCanvasUtil;->getCanvasSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getWindowCanvasSize(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    const/16 v0, 0x5f0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5fc

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return p0

    :cond_2
    :goto_1
    const/16 p0, 0x5a0

    return p0
.end method
