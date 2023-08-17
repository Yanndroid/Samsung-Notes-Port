.class Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;,
        Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;
    }
.end annotation


# static fields
.field private static final MIN_DELTA:F = 0.001f

.field private static final SCROLL_BAR_MARGIN:I = 0xa

.field private static final SCROLL_BAR_THICK:I = 0xa

.field private static final SCROLL_OFFSET:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SpenScrollBar"


# instance fields
.field public directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field private mDeltaScrollY:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mEdgeBottom:Landroid/widget/EdgeEffect;

.field private mEdgeLeft:Landroid/widget/EdgeEffect;

.field private mEdgeRight:Landroid/widget/EdgeEffect;

.field private mEdgeTop:Landroid/widget/EdgeEffect;

.field private mFrameStartX:I

.field private mFrameStartY:I

.field private mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

.field private mHorizontalScrollEnable:Z

.field private mMaxDeltaX:F

.field private mMaxDeltaY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRectLR:Landroid/graphics/Rect;

.field private mRectTB:Landroid/graphics/Rect;

.field private mRtoCvsItstFrmHeight:I

.field private mRtoCvsItstFrmWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollBarEnable:Z

.field private mScrollShow:Z

.field private mToolAndActionMap:Landroid/util/SparseIntArray;

.field private final mUnofficialWaterMarkEnable:Z

.field private mVerticalScrollEnable:Z

.field public needDrawEffect:Z

.field public touchEnd:J

.field public touchStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v1, Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mUnofficialWaterMarkEnable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mUnofficialWaterMarkEnable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance p3, Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    invoke-direct {p3, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mUnofficialWaterMarkEnable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    return p1
.end method

.method private drawEdgeEffect(Landroid/widget/EdgeEffect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_0
    return-void
.end method

.method private drawPost()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private drawUnofficialWaterMark(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0x7f5e5c5b

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Landroid/widget/EdgeEffect;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    :cond_1
    return-void
.end method

.method public drawEdgeEffect(Landroid/graphics/Canvas;IIIILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V
    .locals 3

    invoke-virtual {p6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    int-to-float v1, p2

    add-int v2, p3, p5

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    invoke-virtual {p7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p6

    if-nez p6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p6

    add-int v0, p2, p4

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p7

    if-eqz p7, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_2
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    invoke-virtual {p8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p6

    if-nez p6, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p6

    int-to-float p7, p2

    int-to-float v0, p3

    invoke-virtual {p1, p7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p7, 0x0

    invoke-virtual {p1, p7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_4
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    invoke-virtual {p9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p6

    if-nez p6, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p6

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_6
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public enableHorizontalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    return-void
.end method

.method public enableScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    return-void
.end method

.method public enableVerticalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    return-void
.end method

.method public isHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    return v0
.end method

.method public isScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    return v0
.end method

.method public isVerticalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    return v0
.end method

.method public isWorking()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->isScroll()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    and-int/2addr v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v2

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v2

    :cond_2
    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Landroid/widget/EdgeEffect;

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Landroid/widget/EdgeEffect;

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawEdgeEffect(Landroid/graphics/Canvas;IIIILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->touchStart:J

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->needDrawEffect:Z

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->touchEnd:J

    iget-wide v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->touchStart:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x96

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->needDrawEffect:Z

    :cond_1
    :goto_0
    if-ne v2, v4, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v4, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ne p1, v4, :cond_8

    :cond_2
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_7

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    goto/16 :goto_2

    :cond_3
    if-ne v0, v3, :cond_8

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    const v0, 0x3a83126f    # 0.001f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->needDrawEffect:Z

    if-eqz v3, :cond_4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_4

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->LEFT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    if-eq v1, p1, :cond_5

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    float-to-double v3, v1

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    if-eq p1, v1, :cond_5

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    :cond_5
    :goto_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->needDrawEffect:Z

    if-eqz v1, :cond_6

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_6

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->TOP:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    if-eq v0, p1, :cond_8

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_8

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    if-eq p1, v0, :cond_8

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_3

    :cond_7
    :goto_2
    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawEdgeEffect(Landroid/widget/EdgeEffect;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawEdgeEffect(Landroid/widget/EdgeEffect;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawEdgeEffect(Landroid/widget/EdgeEffect;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawEdgeEffect(Landroid/widget/EdgeEffect;)V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_a
    return-void
.end method

.method public setDeltaValue(FFFFII)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeltaValue deltaX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " maxDeltaX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxDeltaY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenScrollBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaScrollY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaScrollY:F

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    const p2, 0x3a83126f    # 0.001f

    cmpl-float p3, p1, p2

    const/4 p4, 0x1

    if-lez p3, :cond_1

    if-lez p5, :cond_1

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    mul-int v0, p3, p3

    div-int/2addr v0, p5

    sub-int/2addr p3, v0

    add-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, p1

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    iget p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    add-int/lit8 v1, p5, -0xa

    add-int/lit8 v1, v1, -0xa

    add-int/2addr v0, p1

    add-int/lit8 p5, p5, -0xa

    invoke-virtual {p3, p1, v1, v0, p5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    if-lez p6, :cond_2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    mul-int p3, p2, p2

    div-int/2addr p3, p6

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr p2, p1

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    iget p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    add-int/lit8 p6, p5, -0xa

    add-int/lit8 p6, p6, -0xa

    add-int/lit8 p5, p5, -0xa

    add-int/2addr p3, p1

    invoke-virtual {p2, p6, p1, p5, p3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public setScreenInfo(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenInfo width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenScrollBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p3, p2, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Landroid/widget/EdgeEffect;

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Landroid/widget/EdgeEffect;

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Landroid/widget/EdgeEffect;

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
