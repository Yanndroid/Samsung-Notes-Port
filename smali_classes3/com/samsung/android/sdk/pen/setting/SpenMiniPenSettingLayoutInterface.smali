.class interface abstract Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createColorParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createContentParam()Landroid/widget/FrameLayout$LayoutParams;
.end method

.method public abstract createPenParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createSizeParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getColorGroupId()I
.end method

.method public abstract getColorId()I
.end method

.method public abstract getColorPopupId()I
.end method

.method public abstract getPatternId()I
.end method

.method public abstract getPatternPopupId()I
.end method

.method public abstract getPenId()I
.end method

.method public abstract getPenPopupId()I
.end method

.method public abstract getSizeId()I
.end method

.method public abstract getSizePopupId()I
.end method
