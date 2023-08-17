.class public Lb3/w;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_not_enough_cloud_storage_in_settings_title:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_not_enough_cloud_storage_in_settings_body_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_not_enough_cloud_storage_in_settings_body:I

    :goto_0
    move v3, v0

    sget v4, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_manage_cloud_storage:I

    sget v5, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_dismiss:I

    const/4 v6, 0x1

    const/16 v1, 0x800

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
