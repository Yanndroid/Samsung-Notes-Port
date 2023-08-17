.class Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final STYLE_PACKED:I = 0x1

.field public static final STYLE_SPREAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenBrushLayout"


# instance fields
.field private mBeforeColorRect:Landroid/graphics/Rect;

.field private mBeforePenRect:Landroid/graphics/Rect;

.field private mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

.field private mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

.field private mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

.field private mChildAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

.field private mChildOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

.field private mChildSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

.field private mColorAlign:I

.field private mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

.field private mColorView:Landroid/view/View;

.field private mIsChangeAlign:Z

.field private mIsFixed:Z

.field private mIsLayoutChanging:Z

.field private mLayoutDirection:I

.field private mMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

.field private mOrientation:I

.field private mPenAlign:I

.field private mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

.field private mPenView:Landroid/view/View;

.field private mSmallestWidth:I

.field private final mViewPositionControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFZLcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mViewPositionControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsLayoutChanging:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsChangeAlign:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenBrushLayout() style="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " moveable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBrushLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    const/4 p5, 0x1

    if-nez p4, :cond_0

    if-ne p2, p5, :cond_0

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsFixed:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    move v0, p5

    :cond_1
    invoke-direct {v1, p1, v0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;-><init>(Landroid/content/Context;ZF)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mLayoutDirection:I

    if-eqz p4, :cond_2

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBeforePenRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBeforeColorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->stopChildMonitoring(Z)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsLayoutChanging:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsChangeAlign:Z

    return p0
.end method

.method public static synthetic access$1502(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsChangeAlign:Z

    return p1
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsFixed:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->updateChild(ZZ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenRotation()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->notifySizeChanged()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorRotation()V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mLayoutDirection:I

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;IIZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenAlign(IIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    return-object p0
.end method

.method private getChildRect(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mSmallestWidth:I

    if-le v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private getCorrectAlign(I)I
    .locals 2

    const/4 v0, 0x3

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method private notifySizeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getChildRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBeforePenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->updateChildRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;->OnPenViewSizeChanged(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getColorGuideView(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getChildRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBeforeColorRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->updateChildRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;->OnColorViewSizeChanged(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private setColorRotation()V
    .locals 5

    const-string v0, "SpenBrushLayout"

    const-string/jumbo v1, "setColorRotation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getColorGuideView(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mLayoutDirection:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->moveView(Landroid/view/View;Landroid/view/View;II)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;->onColorViewOrientationChanged(I)V

    :cond_1
    return-void
.end method

.method private setColorView(Landroid/view/View;I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorView() align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setColorViewParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getColorGuideView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->setMonitorView(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setColorAlign(I)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorRotation()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setColorView() brushGuideControl="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    const-string v0, "NULL"

    const-string v3, "NOT_NULL"

    if-nez p2, :cond_3

    move-object p2, v0

    goto :goto_1

    :cond_3
    move-object p2, v3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ColorPosControl="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setPenAlign(IIZ)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenAlign() align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " needMonitoring="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenBrushLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsLayoutChanging:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    if-eq p2, p1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsChangeAlign:Z

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->notifySizeChanged()V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->setMonitorView(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setPenAlign(I)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->startMonitoring()Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenRotation()V

    return v0
.end method

.method private setPenRotation()V
    .locals 5

    const-string v0, "SpenBrushLayout"

    const-string/jumbo v1, "setPenRotation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mLayoutDirection:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->moveView(Landroid/view/View;Landroid/view/View;II)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;->onPenViewOrientationChanged(I)V

    :cond_1
    return-void
.end method

.method private setPenView(Landroid/view/View;I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenView() align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setPenViewParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->setMonitorView(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenRotation()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setPenView() brushGuideControl="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    const-string v0, "NULL"

    const-string v3, "NOT_NULL"

    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_1

    :cond_2
    move-object p2, v3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PenPosControl="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private stopChildMonitoring(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopChildMonitoring() isHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->stopMonitoring(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->stopMonitoring(Z)V

    :cond_1
    return-void
.end method

.method private updateChild(ZZ)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateChild() penView is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    const-string v1, "NULL"

    const-string v2, "NOT_NULL"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " colorView is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->startMonitoring()Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorRotation()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->startMonitoring()Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenRotation()V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->notifySizeChanged()V

    :cond_4
    return-void
.end method

.method private updateChildRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenBrushLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    return-void
.end method

.method public getColorAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    return v0
.end method

.method public getColorRect(Landroid/graphics/Rect;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getColorGuideView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getChildRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColorRect() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPenAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    return v0
.end method

.method public getPenRect(Landroid/graphics/Rect;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenAlign:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getChildRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPenRect() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ge v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setOrientation(I)V

    :cond_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " --> "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SpenBrushLayout"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-nez p3, :cond_0

    const-string p1, "already called close()"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-le p1, p2, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_0
    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mSmallestWidth:I

    const/4 p3, 0x1

    if-ge p1, p2, :cond_2

    move p1, p3

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    :goto_1
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    move p2, p3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    if-eqz p2, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsFixed:Z

    if-eqz v1, :cond_4

    move v1, p3

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->stopChildMonitoring(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getOrientation()I

    move-result v1

    if-eq v1, p1, :cond_5

    const-string v1, "Different Orientation. so update."

    invoke-static {p4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p4, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setOrientation(I)V

    :cond_5
    if-eqz p2, :cond_6

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsLayoutChanging:Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setOrientation(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenView:Landroid/view/View;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->updatePenViewRatio(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorView:Landroid/view/View;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->updateColorViewRatio(Landroid/view/View;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_6
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->updateChild(ZZ)V

    :goto_4
    return-void
.end method

.method public setChildActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    return-void
.end method

.method public setChildAlignChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    return-void
.end method

.method public setChildOrientationChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

    return-void
.end method

.method public setChildRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setChildRadius(I)V

    :cond_0
    return-void
.end method

.method public setChildSizeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mChildSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    return-void
.end method

.method public setChildView(Landroid/view/View;ILandroid/view/View;I)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChildView() penAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " colorAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getCorrectAlign(I)I

    move-result p2

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getCorrectAlign(I)I

    move-result p4

    sget v0, Lcom/samsung/android/spen/R$id;->target_pen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    sget v0, Lcom/samsung/android/spen/R$id;->target_color:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mPenPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mViewPositionControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->setGuidePositionChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mViewPositionControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->setGuidePositionChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setControlInfo(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$ActionListener;)V

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorView(Landroid/view/View;I)Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenView(Landroid/view/View;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setColorAlign(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorAlign(IIZ)Z

    move-result p1

    return p1
.end method

.method public setColorAlign(IIZ)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorAlign() align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " needMonitoring="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenBrushLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsLayoutChanging:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    if-eq p2, p1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mIsChangeAlign:Z

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorAlign:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->notifySizeChanged()V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getColorGuideView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->setMonitorView(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setColorAlign(I)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mColorPosControl:Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl;->startMonitoring()Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorRotation()V

    return v0
.end method

.method public setMoveAniStrategy(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushMoveControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setAnimationStrategy(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)V

    :cond_0
    return-void
.end method

.method public setPenAlign(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenAlign(IIZ)Z

    move-result p1

    return p1
.end method

.method public setViewInfo(IFFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setViewInfo(FFFF)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mBrushGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->makeGuide(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->mOrientation:I

    return-void
.end method
