.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mView:Landroid/view/View;

    return-void
.end method

.method private setLeftTopRightBottom()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mLeft:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTop:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mRight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTopLeftCalls:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottomRightCalls:I

    return-void
.end method


# virtual methods
.method public setBottomRight(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mRight:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottom:I

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottomRightCalls:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTopLeftCalls:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->setLeftTopRightBottom()V

    :cond_0
    return-void
.end method

.method public setTopLeft(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mLeft:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTop:I

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTopLeftCalls:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottomRightCalls:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->setLeftTopRightBottom()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " top "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " right "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bottom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mTopLeftCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;->mBottomRightCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
