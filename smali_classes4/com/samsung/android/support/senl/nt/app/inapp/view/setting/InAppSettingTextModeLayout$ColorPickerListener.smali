.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerListener"
.end annotation


# instance fields
.field public mColorType:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChangedByPicker(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorChangedByPicker# color : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / colorPickerType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->mColorType:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppSettingTextModeLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$9;->$SwitchMap$com$samsung$android$support$senl$nt$app$inapp$view$setting$InAppSettingTextModeLayout$ColorType:[I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->mColorType:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "onColorChangedByPicker# wrong color picker type"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->mTextBgPalette:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->updateColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->a(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;)Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->getRemoteRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;->setTextBgColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->mTextPalette:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->updateColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->a(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;)Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->getRemoteRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setColorType(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorPickerListener;->mColorType:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$ColorType;

    return-void
.end method
