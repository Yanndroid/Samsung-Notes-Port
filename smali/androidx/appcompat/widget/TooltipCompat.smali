.class public Landroidx/appcompat/widget/TooltipCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static seslSetNextTooltipForceActionBarPosX(Z)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipForceActionBarPosX(Z)V

    return-void
.end method

.method public static seslSetNextTooltipForceBelow(Z)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipForceBelow(Z)V

    return-void
.end method

.method public static setTooltipNull(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipNull(Z)V

    return-void
.end method

.method public static setTooltipPosition(III)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipPosition(III)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
