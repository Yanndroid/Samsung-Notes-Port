.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportPdf;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_importing_notes:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_tipcard_cancel:I

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;-><init>(IIIIII)V

    return-void
.end method
