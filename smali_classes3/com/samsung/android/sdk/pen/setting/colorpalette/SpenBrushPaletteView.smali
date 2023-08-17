.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;
.super Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;
.source "SourceFile"


# static fields
.field private static final CHILD_FOCUS_RATIO:F = 0.0f

.field private static final COLOR_ITEM_HORIZONTAL_MARGIN_RATIO:F = 0.0957f

.field private static final COLOR_ITEM_RATIO:F = 0.0974f

.field private static final DEFAULT_COL_COUNT:I = 0x5

.field private static final DEFAULT_ROW_COUNT:I = 0x2

.field private static final END_PADDING_RATIO:F = 0.119f

.field private static final START_PADDING_RATIO:F = 0.1258f

.field private static final TAG:Ljava/lang/String; = "SpenBrushPaletteView"

.field private static final TOP_PADDING_RATIO:F = 0.1379f


# instance fields
.field private mIsHorizontal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->mIsHorizontal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;-><init>(Landroid/content/Context;III)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->mIsHorizontal:Z

    if-gt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->mIsHorizontal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->mIsHorizontal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    :goto_2
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;-><init>(Landroid/content/Context;III)V

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->mIsHorizontal:Z

    return-void
.end method

.method private updateChild(II)V
    .locals 4

    if-le p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    int-to-float p2, v0

    const v0, 0x3dc779a7    # 0.0974f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float v0, p1

    const v1, 0x3e0d35a8    # 0.1379f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const v2, 0x3dc3fe5d    # 0.0957f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p2

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->mIsHorizontal:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->setIndicatorInfo(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->setIndicatorInfo(II)V

    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->setChildInfo(II)V

    return-void
.end method

.method private updatePadding(II)V
    .locals 4

    if-le p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    int-to-float p1, p1

    const p2, 0x3e0d35a8    # 0.1379f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p2, v0

    const v0, 0x3e00d1b7    # 0.1258f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    const v1, 0x3df3b646    # 0.119f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "padding["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenBrushPaletteView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged() old["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]  new["

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SpenBrushPaletteView"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->updatePadding(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;->updateChild(II)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBrushPaletteView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
