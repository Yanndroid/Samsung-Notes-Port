.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->initTextBgPalette(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaletteClicked(II)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->mTextBgPalette:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->setSelectedColor(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->mTextBgPalette:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v0, v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->a(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;)Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->getRemoteRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget p1, p1, p2

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;->setTextBgColor(I)V

    :cond_0
    return-void
.end method
