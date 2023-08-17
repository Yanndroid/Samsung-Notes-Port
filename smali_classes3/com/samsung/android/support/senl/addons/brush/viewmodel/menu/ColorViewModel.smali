.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;
.super Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$OnClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0011\u0018\u0000 )2\u00020\u0001:\u0002)*B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0014J\u0008\u0010\u000f\u001a\u00020\rH\u0014J\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0011J\u0006\u0010\u001c\u001a\u00020\u0018J\u0006\u0010\u001d\u001a\u00020\u0018J\u0006\u0010\u001e\u001a\u00020\rJ\u0010\u0010\u001f\u001a\u00020\r2\u0008\u0010 \u001a\u0004\u0018\u00010\u001aJ\u000e\u0010\u001f\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0011J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0018J\u0010\u0010$\u001a\u00020\r2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u000e\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0018J\u0010\u0010\'\u001a\u00020\r2\u0008\u0010(\u001a\u0004\u0018\u00010\u000bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;",
        "model",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mModel",
        "mSettingModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getColor",
        "",
        "getData",
        "",
        "id",
        "",
        "getDescription",
        "getEnabled",
        "",
        "getHSV",
        "",
        "getPosition",
        "isEnabled",
        "isSelected",
        "onClick",
        "setColor",
        "hsvColor",
        "color",
        "setEnabled",
        "enabled",
        "setModel",
        "setSelected",
        "selected",
        "setSettingModel",
        "settingModel",
        "Companion",
        "OnClickListener",
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
.field private static final BINDING_ID_COLOR:Ljava/lang/String; = "color"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_DESCRIPTION:Ljava/lang/String; = "description"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ENABLED:Ljava/lang/String; = "enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setModel(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isSelected()Z

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->select(Z)V

    return-void
.end method

.method public static final synthetic access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    return-object p0
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mSettingModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->clearModels()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->closeCallbacks()V

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public final getColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x66ca7c04

    if-eq v0, v1, :cond_4

    const v1, -0x5ff074bf

    if-eq v0, v1, :cond_2

    const v1, 0x5a72f63

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public final getHSV()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->getHSV()[F

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public final isSelected()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public final onClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->select(Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mSettingModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPenSettingVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mSettingModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setEraserSettingVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->select(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onColorSelected(I)V

    :cond_2
    return-void
.end method

.method public final setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final setColor([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->setColor([F)V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setModel(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isSelected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->select(Z)V

    :cond_1
    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->select(Z)Z

    :cond_0
    return-void
.end method

.method public final setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->mSettingModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method
