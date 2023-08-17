.class public Lb3/s;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_sync_sever_error_title:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_sync_sever_error_body_jp:I

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_sync_sever_error_body:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_sync_sever_error_body_none_samsung_cloud:I

    goto :goto_0

    :goto_1
    sget v4, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_try_again:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
