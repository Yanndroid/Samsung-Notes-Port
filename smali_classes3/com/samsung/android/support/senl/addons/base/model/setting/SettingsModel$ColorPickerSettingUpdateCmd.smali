.class public final Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$ColorPickerSettingUpdateCmd;
.super Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ColorPickerSettingUpdateCmd"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$ColorPickerSettingUpdateCmd;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "visibility",
        "",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V",
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


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$ColorPickerSettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/16 v3, 0x8

    const/16 v4, 0x1f9

    const-string v5, "Color Picker Popup"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V

    return-void
.end method
