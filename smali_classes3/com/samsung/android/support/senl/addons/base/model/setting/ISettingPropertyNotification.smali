.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008f\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;",
        "getAttachSheetVisibility",
        "",
        "getColorGradationVisibility",
        "getColorPickerVisibility",
        "getEraserSettingVisibility",
        "getPaletteSettingVisibility",
        "getPenSettingVisibility",
        "getSelectionSettingVisibility",
        "setAttachSheetVisibility",
        "",
        "visibility",
        "setColorGradationVisibility",
        "setColorPickerVisibility",
        "setEraserSettingVisibility",
        "setPaletteSettingVisibility",
        "setPenSettingVisibility",
        "setSelectionSettingVisibility",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_PROPERTY_ATTACH_SHEET_SHOW:I = 0x1fb

.field public static final OBSV_PROPERTY_CLEAR_POPUP_VISIBILITY:I = 0x1fe

.field public static final OBSV_PROPERTY_COLOR_PICKER_SHOW:I = 0x1f9

.field public static final OBSV_PROPERTY_ERASER_SETTING_SHOW:I = 0x1f6

.field public static final OBSV_PROPERTY_GRADATION_SHOW:I = 0x1f8

.field public static final OBSV_PROPERTY_PALLET_SETTING_SHOW:I = 0x1fa

.field public static final OBSV_PROPERTY_PEN_SETTING_SHOW:I = 0x1f5

.field public static final OBSV_PROPERTY_POPUP_SETTING_RECREATE:I = 0x1fd

.field public static final OBSV_PROPERTY_POPUP_SETTING_STORE:I = 0x1fc

.field public static final OBSV_PROPERTY_SELECTION_SETTING_SHOW:I = 0x1f7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification;->Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAttachSheetVisibility()Z
.end method

.method public abstract getColorGradationVisibility()Z
.end method

.method public abstract getColorPickerVisibility()Z
.end method

.method public abstract getEraserSettingVisibility()Z
.end method

.method public abstract getPaletteSettingVisibility()Z
.end method

.method public abstract getPenSettingVisibility()Z
.end method

.method public abstract getSelectionSettingVisibility()Z
.end method

.method public abstract setAttachSheetVisibility(Z)V
.end method

.method public abstract setColorGradationVisibility(Z)V
.end method

.method public abstract setColorPickerVisibility(Z)V
.end method

.method public abstract setEraserSettingVisibility(Z)V
.end method

.method public abstract setPaletteSettingVisibility(Z)V
.end method

.method public abstract setPenSettingVisibility(Z)V
.end method

.method public abstract setSelectionSettingVisibility(Z)V
.end method
