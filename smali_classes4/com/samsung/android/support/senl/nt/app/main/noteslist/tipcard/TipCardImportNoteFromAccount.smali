.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportNoteFromAccount;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_title_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_title:I

    :goto_0
    move v3, v0

    const/4 v4, 0x0

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_settings:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/high16 v2, 0x40000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_message_jp_tablet:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_message_tablet:I

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_message_jp:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_message:I

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_message_secure_folder_tablet:I

    goto :goto_2

    :cond_6
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_import_account_message_secure_folder:I

    :goto_2
    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    return-void
.end method
