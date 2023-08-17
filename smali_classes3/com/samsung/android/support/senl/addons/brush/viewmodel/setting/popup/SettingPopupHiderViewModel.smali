.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0014J\u0008\u0010\u000e\u001a\u00020\u000bH\u0014J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u000bJ\u0012\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mIsActived",
        "",
        "mModel",
        "clearModels",
        "",
        "close",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "getIsHide",
        "hide",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "performTouch",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BINDING_ID_IS_HIDE:Ljava/lang/String; = "isHide"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsActived:Z

.field private mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$Companion;

    const-string v0, "SettingPopupHiderViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPenSettingVisibility()Z

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result p1

    if-ne p1, v0, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorGradationVisibility()Z

    move-result p1

    if-ne p1, v0, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPaletteSettingVisibility()Z

    move-result p1

    if-ne p1, v0, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    :cond_6
    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mIsActived:Z

    return-void
.end method

.method public static final synthetic access$getMIsActived$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mIsActived:Z

    return p0
.end method

.method public static final synthetic access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object p0
.end method

.method public static final synthetic access$setMIsActived$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mIsActived:Z

    return-void
.end method

.method private final performTouch(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    const/16 v1, 0xd3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mIsActived:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onTouch : hide popups"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->hide()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onBrushEraserSettingPopupClose(IZ)V

    :cond_4
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->setResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mIsActived:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getData. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isHide"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->getIsHide()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getIsHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mIsActived:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPenSettingVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setEraserSettingVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorGradationVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->mModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPaletteSettingVisibility(Z)V

    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "action_touch"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->performTouch(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    :cond_1
    return-void
.end method
