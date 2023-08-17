.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003:\u0001\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u001a\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&R\u0012\u0010\u0004\u001a\u00028\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;",
        "T",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;",
        "penSettingPopup",
        "getPenSettingPopup",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;",
        "removerSettingPopup",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;",
        "getRemoverSettingPopup",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;",
        "close",
        "",
        "hidePopup",
        "mode",
        "",
        "setChangeListener",
        "listener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;",
        "showPopup",
        "data",
        "",
        "IChangeListener",
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
.method public abstract close()V
.end method

.method public abstract getPenSettingPopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getRemoverSettingPopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hidePopup(I)V
.end method

.method public abstract setChangeListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showPopup(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
