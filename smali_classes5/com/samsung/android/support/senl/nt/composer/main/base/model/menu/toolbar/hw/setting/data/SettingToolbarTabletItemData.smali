.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarItemData;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarItemData;-><init>()V

    return-void
.end method

.method private getOrderData()Ljava/lang/String;
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_toolbar_item_order"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isEnableFunction(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->getOrderData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getQuickColorUseCount()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_customize_toolbar_quick_color_use_count"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuickSizeUseCount()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_customize_toolbar_quick_size_use_count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isEnableQuickColor()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->QuickColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnableQuickSize()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->QuickSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledAssistance()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Assistance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledAutoFixShapes()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Shape:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledConvertToText()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->ConvertText:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledEasyWritingPad()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->EasyWritePad:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledLockCanvas()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->LockCanvas:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledPenStyle()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Style:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledSpenToText()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->DirectWrite:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledStraighten()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Align:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarTabletItemData;->isEnableFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
