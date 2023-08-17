.class public Lb3/p;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_network_error_title:I

    sget v3, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_network_error_body:I

    sget v4, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_retry:I

    const/16 v1, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
