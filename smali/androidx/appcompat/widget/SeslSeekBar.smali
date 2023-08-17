.class public Landroidx/appcompat/widget/SeslSeekBar;
.super Landroidx/appcompat/widget/SeslAbsSeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;,
        Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOldValue:I

.field private mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHoverChanged(III)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;->onHoverChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onProgressRefresh(FZI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onProgressRefresh(FZI)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, p3, p2}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p3, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOldValue:I

    if-eq p3, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOldValue:I

    iget-object p3, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz p3, :cond_1

    invoke-interface {p3, p0, p1, p2}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingHover(III)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Landroidx/appcompat/widget/SeslSeekBar;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingHover()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setOnSeekBarHoverListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarHoverListener;

    return-void
.end method
