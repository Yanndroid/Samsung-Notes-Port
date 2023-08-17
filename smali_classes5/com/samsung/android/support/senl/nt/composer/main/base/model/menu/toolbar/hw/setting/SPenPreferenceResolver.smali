.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLatestString(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;->DEFAULT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/migration/LegacyVersionException;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/migration/LegacyVersionException;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->previousVersion(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    const-string p1, "has no preference value"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLatestString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;->DEFAULT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getLatestString(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;->DEFAULT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    return-object v0
.end method

.method private static getSettingPreferences(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$IPreference;->getPreference()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static previousVersion(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenVersion$Version;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static setBoolean(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/SPenPreferenceResolver;->getSettingPreferences()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
