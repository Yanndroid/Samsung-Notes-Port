.class public Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;,
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;",
        "",
        "()V",
        "Factory",
        "SettingPopupInfo",
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
.field public static final Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
