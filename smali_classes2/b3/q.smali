.class public Lb3/q;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_sync_not_enough_device_storage_title:I

    sget v3, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_sync_not_enough_device_storage_body:I

    const/16 v1, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
