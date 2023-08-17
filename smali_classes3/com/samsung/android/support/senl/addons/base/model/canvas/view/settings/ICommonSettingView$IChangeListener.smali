.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView$IChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;
.implements Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;
.implements Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;
.implements Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IChangeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ICommonSettingView$IChangeListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;",
        "Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;",
        "Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;",
        "Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;",
        "onSpuitVisibilityChanged",
        "",
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


# virtual methods
.method public abstract onSpuitVisibilityChanged(Z)V
.end method
