.class abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushMoveObject"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

.field private mAlignment:I

.field private mLongClickListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;

.field private mLongClickTouchX:F

.field private mLongClickTouchY:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mAlignment:I

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mLongClickListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getTagName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mView:Landroid/view/View;

    invoke-virtual {p0, p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->setViewLongClickListener(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    return-void
.end method

.method public getActionListener()Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    return-object v0
.end method

.method public getAlignment()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mAlignment:I

    return v0
.end method

.method public abstract getCurrentGuideView(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)Landroid/view/View;
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getNextMovement()Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getViewType()Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;
.end method

.method public makeShadowBuilder(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mView:Landroid/view/View;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mLongClickTouchX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mLongClickTouchY:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Point;I)V

    return-object v0
.end method

.method public abstract notifyActionLongClicked()V
.end method

.method public abstract notifyActionPositionChanged(Z)V
.end method

.method public onLongClick(Landroid/view/View;FF)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongClick ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] POS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveObject"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mLongClickTouchX:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mLongClickTouchY:F

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mLongClickListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;->onLongClick(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->mAlignment:I

    return-void
.end method

.method public abstract setViewLongClickListener(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V
.end method
