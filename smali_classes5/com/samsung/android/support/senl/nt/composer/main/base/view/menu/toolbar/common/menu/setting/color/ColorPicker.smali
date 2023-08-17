.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;
    }
.end annotation


# static fields
.field private static final POPUP_ALPHA_DURATION:I = 0x12c

.field private static final PREFS_KEY_FOR_COLOR_PICKER_VIEW_MODE:Ljava/lang/String; = "KEY_RICHTEXT_COLOR_PICKER_VIEW_MODE"

.field private static final PREFS_NAME_COLOR:Ljava/lang/String; = "color_shared_preferences"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorPickerVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mParentView:Landroid/view/View;

.field private mRichTextColorPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;

.field private mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

.field private mSpenColorPickerPopupDoneClick:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RtColorPicker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopupDoneClick:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mParentView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mRichTextColorPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mColorPickerVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mRichTextColorPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopupDoneClick:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopupDoneClick:Z

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    :cond_0
    return-void
.end method

.method public dismissColorPicker()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->isShowingColorPicker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingColorPicker()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setColorPickerVisibilityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mColorPickerVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;

    return-void
.end method

.method public setOrientationMode(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->isShowingColorPicker()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setOrientationMode(I)V

    :cond_0
    return-void
.end method

.method public showColorPickerPopup(Landroid/view/View;IIIZ)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showColorPickerPopup currentColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bgColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " colorTheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hasCloseButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    if-nez p2, :cond_1

    invoke-static {p3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->dismissColorPicker()Z

    const-string p2, "color_shared_preferences"

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    const/4 p3, 0x2

    const-string v1, "KEY_RICHTEXT_COLOR_PICKER_VIEW_MODE"

    invoke-virtual {p2, v1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p2

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p3, v1, p2, v0, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;-><init>(Landroid/content/Context;I[FZ)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorTheme(I)V

    if-eqz p5, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setCloseButton(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mOrientation:I

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setOrientationMode(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mParentView:Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->show(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mColorPickerVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;

    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;->onVisibilityChanged(I)V

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$3;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
