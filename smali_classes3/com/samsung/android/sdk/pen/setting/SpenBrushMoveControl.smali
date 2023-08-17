.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$ActionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_GUIDE_BG:I

.field private static final DELAY_TIME_FOR_ANIMATION_END:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "SpenBrushMoveControl"


# instance fields
.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

.field private mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

.field private final mDragActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

.field private mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

.field private mDragShadowBuilder:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

.field private mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

.field private mIsDragStarted:Z

.field private mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

.field private mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

.field private mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

.field private mNeedUpdatePartner:Z

.field private mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mViewRadius:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#50c7c7c7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->DEFAULT_GUIDE_BG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mIsDragStarted:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const-string v1, "SpenBrushMoveControl"

    const-string v2, "SpenBrushMoveControl()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_brush_radius_default:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->DEFAULT_GUIDE_BG:I

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setGuideRoundedBackground(II)V

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mViewRadius:I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->prepareToDrag()V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->updatePositionChanged(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;II)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->updateAnimationViewPos(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->endAction(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->restoreViewScale(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->endDrag()V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mNeedUpdatePartner:Z

    return p0
.end method

.method private cancelDrag(Landroid/view/View;)V
    .locals 2

    const-string v0, "SpenBrushMoveControl"

    const-string v1, "Drag is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->restoreViewScale(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->endDrag()V

    return-void
.end method

.method private endAction(Landroid/view/View;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endAction() result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->makeFirstState()V

    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/view/View;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result p2

    if-nez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->endDrag()V

    return-void

    :cond_2
    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mIsDragStarted:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isProcessing()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->restoreViewScale(Landroid/view/View;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mIsDragStarted:Z

    :cond_3
    return-void
.end method

.method private endDrag()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endDrag() dragFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mIsDragStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mIsDragStarted:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->endEffect()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setAllChildBgVisibility(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragShadowBuilder:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    return-void
.end method

.method private getDragArea(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getColorGuideView(I)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, p1, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v1

    if-ne v1, p1, :cond_2

    move v5, v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->getArea(I)[Landroid/graphics/Point;

    move-result-object p1

    move-object v1, v0

    move v4, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;-><init>(Landroid/view/View;Landroid/view/View;ZZ[Landroid/graphics/Point;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private makeShadowBuilder(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getCurrentGuideView(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->decideDragViewSize(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SpenBrushMoveControl"

    const-string v0, "prePareToDrag targetView is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mViewRadius:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->makeShadowBuilder(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragShadowBuilder:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragShadowBuilder:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->getOffset(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result p1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->readyToDrag(ZILandroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragShadowBuilder:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->setShadowBuilder(Landroid/view/View$DragShadowBuilder;)V

    :cond_2
    return v4
.end method

.method private prepareToDrag()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setAllChildBgVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->makeShadowBuilder(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->startDrag(Landroid/view/View;)V

    return-void
.end method

.method private readyToDrag(ZILandroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDrag() isDragPen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " currentAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mIsDragStarted:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->makeDecision()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Not make decision."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    new-array v0, v1, [Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->getDragArea(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    move-result-object v3

    aput-object v3, v0, v4

    aget-object v3, v0, v4

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->setTarget(Z)V

    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->startDrag()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->setDragArea(I[Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->setDragViewInfo(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method private restoreViewScale(Landroid/view/View;Z)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setGuideLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->adjustGuide(II)V

    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/ClipData$Item;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "text/plain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragShadowBuilder:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, p1, v1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenBrushMoveControl"

    const-string v1, "[DRAG] startDrag is impossible."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->cancelDrag(Landroid/view/View;)V

    return-void
.end method

.method private updateAnimationViewPos(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->updateEffectRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updatePositionChanged(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;II)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v0

    if-ne v0, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mNeedUpdatePartner:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->setAlignment(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getNextMovement()Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->decideDirection(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getCurrentGuideView(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->startAttachEffect(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;)Z

    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mNeedUpdatePartner:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->notifyActionPositionChanged(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenBrushMoveControl"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public decideDragViewSize(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public hasMoveEffect()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;)Z
    .locals 2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->notifyActionLongClicked()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++ view rotation="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Pivot["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] size["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenBrushMoveControl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->beginEffect(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->startDetachEffect(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->prepareToDrag()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$ActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;)V

    return-void
.end method

.method public setAnimationStrategy(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveEffect:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->setAttachEffectListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setChildRadius(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChildRadius() radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->DEFAULT_GUIDE_BG:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setGuideRoundedBackground(II)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mViewRadius:I

    return-void
.end method

.method public setColorAlign(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorAlign() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->setAlignment(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setGuideLayout()V

    return-void
.end method

.method public setControlInfo(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setControlInfo() penAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " colorAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragAreaDecision:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->setParent(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMovePenObject;

    invoke-direct {v0, p2, p4, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMovePenObject;-><init>(Landroid/view/View;ILcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveColorObject;

    invoke-direct {p2, p3, p5, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveColorObject;-><init>(Landroid/view/View;ILcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mCurrentMoveObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getTagName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMoveColorObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getTagName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mDragActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mGuideControl:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->setTag()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mBrushDragListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setGuideLayout()V

    return-void
.end method

.method public setPenAlign(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenAlign() pen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->mMovePenObject:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->setAlignment(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->setGuideLayout()V

    return-void
.end method
