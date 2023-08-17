.class public Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SimpleChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView$IChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J \u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SimpleChangeListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView$IChangeListener;",
        "()V",
        "onChanged",
        "",
        "spenSettingSelectionInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;",
        "onClearAll",
        "onColorPicked",
        "color",
        "",
        "x",
        "",
        "y",
        "onPenInfoChanged",
        "spenSettingUIPenInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "onRemoverInfoChanged",
        "spenSettingRemoverInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;",
        "onSpuitVisibilityChanged",
        "visible",
        "",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onClearAll()V
    .locals 0

    return-void
.end method

.method public onColorPicked(IFF)V
    .locals 0

    return-void
.end method

.method public onPenInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onRemoverInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onSpuitVisibilityChanged(Z)V
    .locals 0

    return-void
.end method
