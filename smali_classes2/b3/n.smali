.class public Lb3/n;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_import_server_error_title:I

    sget v3, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_import_server_error_body:I

    sget v4, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_retry:I

    sget v5, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_cancel:I

    const/4 v1, 0x2

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
