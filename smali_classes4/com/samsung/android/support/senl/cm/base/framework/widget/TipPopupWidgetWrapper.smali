.class public Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM_LEFT:I = 0x2

.field public static final DIRECTION_DEFAULT:I = -0x1

.field public static final DIRECTION_TOP_LEFT:I = 0x0

.field public static final DIRECTION_TOP_RIGHT:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_TRANSLUCENT:I = 0x1

.field public static final STATE_DISMISSED:I = 0x0

.field public static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HINT:I = 0x1


# instance fields
.field private final mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColor(I)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setBorderColor(I)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setMessageTextColor(I)V

    return-void
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper$OnStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper$OnStateChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    return-void
.end method

.method public setTargetPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    return-void
.end method

.method public show(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->mTipPopupImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/widget/TipPopupImpl;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    return-void
.end method
