.class public final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;",
        "",
        "()V",
        "setPopup",
        "",
        "view",
        "Landroid/view/View;",
        "show",
        "",
        "mode",
        "",
        "data",
        "setSettingPopup",
        "popup",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setPopup(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    if-eqz p2, :cond_0

    invoke-interface {p1, p3, p4}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;->showPopup(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;->hidePopup(I)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "View is not ISpenSettingView"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final setSettingPopup(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;->isShow()Z

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;->getType()I

    move-result v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;->getData()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BASettingPopupControl;->setPopup(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method
