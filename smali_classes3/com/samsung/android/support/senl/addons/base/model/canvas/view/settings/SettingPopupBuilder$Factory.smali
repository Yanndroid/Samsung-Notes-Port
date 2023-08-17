.class public final Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001J\u0006\u0010\u000c\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;",
        "",
        "()V",
        "createAttachSheetPopup",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;",
        "show",
        "",
        "createColorPalletPopup",
        "data",
        "createColorPickerPopup",
        "createErasePopup",
        "createGradationPopup",
        "createNonePopup",
        "createPenPopup",
        "createRecreatePopup",
        "createSelectionPopup",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAttachSheetPopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-object v0
.end method

.method public final createColorPalletPopup(ZLjava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZILjava/lang/Object;)V

    return-object v0
.end method

.method public final createColorPickerPopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-object v0
.end method

.method public final createErasePopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-object v0
.end method

.method public final createGradationPopup(ZLjava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZILjava/lang/Object;)V

    return-object v0
.end method

.method public final createNonePopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createPenPopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-object v0
.end method

.method public final createRecreatePopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-object v0
.end method

.method public final createSelectionPopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-object v0
.end method
