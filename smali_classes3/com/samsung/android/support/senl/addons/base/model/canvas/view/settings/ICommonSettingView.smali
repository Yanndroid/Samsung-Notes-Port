.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView$IChangeListener;,
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView$ISettingPopupListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonPenSettingPopup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u0011\u0012J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0004H&J\u0008\u0010\n\u001a\u00020\u0004H&J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000fH&J\u0008\u0010\u0010\u001a\u00020\u0004H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonPenSettingPopup;",
        "addRecentColor",
        "",
        "hsv",
        "",
        "color",
        "",
        "close",
        "hideSettingView",
        "savePenSettingInfo",
        "info",
        "Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;",
        "saveRemoverSettingInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;",
        "saveSettingInfo",
        "IChangeListener",
        "ISettingPopupListener",
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


# virtual methods
.method public abstract addRecentColor(I)V
.end method

.method public abstract addRecentColor([F)V
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract close()V
.end method

.method public abstract hideSettingView()V
.end method

.method public abstract savePenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract saveRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract saveSettingInfo()V
.end method
