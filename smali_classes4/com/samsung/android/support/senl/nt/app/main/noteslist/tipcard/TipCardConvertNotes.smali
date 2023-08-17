.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardConvertNotes;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_converting_notes:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->cancel_btn:I

    const/high16 v1, 0x200000

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;-><init>(IIIIII)V

    return-void
.end method
