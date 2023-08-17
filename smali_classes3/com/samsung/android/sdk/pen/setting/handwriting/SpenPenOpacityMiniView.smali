.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;
.super Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;
.source "SourceFile"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->getUserDefineChildLayout()I

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$layout;->setting_pen_attr_opacity_mini_view:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setUserDefineChildLayout(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->close()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->onFinishInflate()V

    const-string v0, "%d%%"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setLabelFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;->mColor:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;->setColor(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;->mColor:I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->getAlphaToPercent(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setValue(I)V

    return-void
.end method
