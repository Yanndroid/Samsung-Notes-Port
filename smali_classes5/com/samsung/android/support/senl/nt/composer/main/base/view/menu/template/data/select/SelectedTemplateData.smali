.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIsSettingMode:Z

.field private mSelectedTemplate:Ljava/lang/String;

.field private mSelectedTemplateType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SelectedTemplateData"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_template_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$Default;->SETTINGS_PAGE_TEMPLATE:Ljava/lang/String;

    const-string v2, "settings_page_template"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mIsSettingMode:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "template_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    const-string v0, "template_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    const-string v0, "template_setting_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mIsSettingMode:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->loggerSelectedTemplateData()V

    return-void
.end method

.method private loggerSelectedTemplateData()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectedTemplateData# selectedTemplateType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SelectedTemplate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSelectedTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTemplateType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    return v0
.end method

.method public setDefaultTemplateData()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$Default;->SETTINGS_PAGE_TEMPLATE:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    return-void
.end method

.method public setSelectedTemplateData(ILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplateType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mSelectedTemplate:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->mIsSettingMode:Z

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_template_type"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "settings_page_template"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
