.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/PwDialogCreator;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createSaveBackupDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;-><init>()V

    return-object v0
.end method
