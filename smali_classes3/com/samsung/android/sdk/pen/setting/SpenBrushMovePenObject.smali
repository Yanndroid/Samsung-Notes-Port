.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMovePenObject;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;-><init>(Landroid/view/View;ILcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$LongClickListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentGuideView(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)Landroid/view/View;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getPenGuideView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getNextMovement()Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushPenNextMovement;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushPenNextMovement;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    return-object v0
.end method

.method public notifyActionLongClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getActionListener()Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getActionListener()Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;->onPenLongClicked()V

    return-void
.end method

.method public notifyActionPositionChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getActionListener()Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getActionListener()Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject$ActionListener;->onPenPositionChanged(IZ)V

    return-void
.end method

.method public setViewLongClickListener(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setSettingViewLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V

    return-void
.end method
