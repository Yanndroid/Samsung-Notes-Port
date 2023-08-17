.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_SETTING_PEN_MINI_ENABLE:Ljava/lang/String; = "KEY_SETTING_PEN_MINI_ENABLE"

.field private static final KEY_SETTING_PEN_MINI_VIEW_MODE:Ljava/lang/String; = "KEY_SETTING_PEN_MINI_VIEW_MODE"


# instance fields
.field private mIsFavoriteMode:Z

.field private mIsPenMiniMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KEY_SETTING_PEN_MINI_VIEW_MODE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->mIsFavoriteMode:Z

    const-string v0, "KEY_SETTING_PEN_MINI_ENABLE"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->mIsPenMiniMode:Z

    return-void
.end method


# virtual methods
.method public getToggledFavoriteMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->isFavoriteMode()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->setFavoriteMode(Z)V

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->mIsPenMiniMode:Z

    return v0
.end method

.method public isFavoriteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->mIsFavoriteMode:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->mIsPenMiniMode:Z

    const-string v0, "KEY_SETTING_PEN_MINI_ENABLE"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFavoriteMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->mIsFavoriteMode:Z

    const-string v0, "KEY_SETTING_PEN_MINI_VIEW_MODE"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method
