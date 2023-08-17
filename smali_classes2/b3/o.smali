.class public Lb3/o;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v3, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_fail_to_share_something_went_wrong_body:I

    sget v4, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_btn_retry:I

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    return-void
.end method
