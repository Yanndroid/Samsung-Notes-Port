.class abstract Lcom/google/android/material/tabs/SeslAbsIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public abstract onHide()V
.end method

.method public abstract onSetSelectedIndicatorColor(I)V
.end method

.method public abstract onShow()V
.end method

.method public setHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onHide()V

    return-void
.end method

.method public setPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startPressEffect()V

    return-void
.end method

.method public setReleased()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startReleaseEffect()V

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    return-void
.end method

.method public setShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onShow()V

    return-void
.end method

.method public abstract startPressEffect()V
.end method

.method public abstract startReleaseEffect()V
.end method
