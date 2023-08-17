.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;,
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPaletteRecentControl"


# instance fields
.field private RECENT_COLOR_MAX:I

.field private mBackupSelectedColor:[F

.field private mColorHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mContext:Landroid/content/Context;

.field private mIsEyedropperEnable:Z

.field private mOnColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

.field private mRecentColors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentIndexList:[I

.field private mRecentPageIndex:I

.field private mSelectedIdx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentPageIndex:I

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mSelectedIdx:I

    new-array p2, p4, [I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aput p2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    return-void
.end method

.method private backupSelectedColor()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mSelectedIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getDisplayColorCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mSelectedIdx:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mBackupSelectedColor:[F

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;->mColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mBackupSelectedColor:[F

    :cond_1
    :goto_0
    return-void
.end method

.method private getDisplayColorCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getPossibleColorCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    :goto_0
    return v0
.end method

.method private getVisibleColor([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_0
    return-void
.end method

.method private initColorList(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenPaletteRecentControl"

    const-string v1, "initColorList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "initColorList() colors is null."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    if-ge v1, v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initColorList() inputCount ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " addCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MAX="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;->getColor([F)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;->getColorString([F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;-><init>([FLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private restoreSelectedColor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mBackupSelectedColor:[F

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getChildIndex([F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-le v0, v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setSelected(IZZ)V

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mSelectedIdx:I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mBackupSelectedColor:[F

    return-void
.end method


# virtual methods
.method public addColor([F)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addColor() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteRecentControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->backupSelectedColor()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;->getColorString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;-><init>([FLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->updateColor()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->restoreSelectedColor()V

    return v2
.end method

.method public clearChecked()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getDisplayColorCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentPageIndex:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aget v5, v5, v2

    invoke-interface {v3, v4, v5, v1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mSelectedIdx:I

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_0
    return-void
.end method

.method public getChildIndex([F)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;-><init>([FLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p1, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getPossibleColorCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aget p1, v0, p1

    return p1

    :cond_0
    return v1
.end method

.method public getRecentColors(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;->mColor:[F

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;-><init>([F)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public initPage([II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentPageIndex:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color_spuit:I

    invoke-interface {p1, v0, v1, p2, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setResource(IIII)V

    :cond_3
    return-void
.end method

.method public isEyedropperButton(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onButtonClick(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onButtonClick in Recent. childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ColorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteRecentControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->clearChecked()V

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setSelected(IZZ)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mOnColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    const/4 p2, 0x3

    new-array v0, p2, [F

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mOnColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;->OnColorSelected(I[F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setSelected(IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->updateColor()V

    return-void
.end method

.method public setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mOnColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;

    return-void
.end method

.method public setPaletteView(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    return-void
.end method

.method public setRecentColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->initColorList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->updateColor()V

    return-void
.end method

.method public setSelected(IZZ)V
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getDisplayColorCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentPageIndex:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aget v2, v2, p1

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mSelectedIdx:I

    :cond_0
    return-void
.end method

.method public updateColor()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentColors:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;

    iget-object v4, v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;->mColor:[F

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getVisibleColor([F[F)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentPageIndex:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aget v6, v6, v2

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$RecentHsvColor;->mName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setColor(II[FLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mIsEyedropperEnable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->RECENT_COLOR_MAX:I

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentPageIndex:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->mRecentIndexList:[I

    aget v4, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->resetColor(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
