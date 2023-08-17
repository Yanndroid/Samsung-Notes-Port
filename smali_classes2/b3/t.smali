.class public Lb3/t;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_impoort_downloading_title:I

    sget v3, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_impoort_downloading_data_body:I

    sget v4, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_cancel:I

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;-><init>(IIIIII)V

    return-void
.end method
