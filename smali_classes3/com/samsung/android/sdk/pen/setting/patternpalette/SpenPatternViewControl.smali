.class Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;
    }
.end annotation


# static fields
.field private static final NO_SELECTED_PATTERN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenPatternViewControl"

.field private static final TOTAL_PATTERN_COUNT:I = 0x9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;

.field private final mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

.field private mPatternResIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mSelectedResId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPatternByChildIdx(IZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->notifyPatternChanged(I)V

    return-void
.end method

.method private clearChecked(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v2, p1, v1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findChildIdx(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private findChildIdxBySize(F)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string v0, "SpenPatternViewControl"

    const-string v1, "Resource is not founded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method private getPatternId(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPatternSize(I)F
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPatternString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyPatternChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPatternChanged() childIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPatternViewControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->getPatternString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->getPatternId(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->getPatternSize(I)F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;->onPatternChanged(Ljava/lang/String;IF)V

    return-void
.end method

.method private setPatternByChildIdx(IZ)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->getPatternId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mSelectedResId:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->clearChecked(I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mSelectedResId:I

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pattern is not existed. id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPatternViewControl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v0, p1, v2, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    return v2
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;

    return-void
.end method

.method public getPattern()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mSelectedResId:I

    return v0
.end method

.method public setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;

    return-void
.end method

.method public setPattern(IZ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->findChildIdx(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPatternByChildIdx(IZ)Z

    move-result p1

    return p1
.end method

.method public setPatternList(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    const-string v1, "SpenPatternViewControl"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPatternList() size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternSizeList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPaletteInfo(I)V

    move p1, v2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPatternResIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setResource(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mSelectedResId:I

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPattern(IZ)Z

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;)V

    return p2

    :cond_6
    :goto_3
    const-string/jumbo p1, "setPatternList() view or list is null."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setPatternSize(FZ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->findChildIdxBySize(F)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPatternByChildIdx(IZ)Z

    move-result p1

    return p1
.end method
