.class public Lcom/samsung/android/app/notes/widget/dialog/StorageErrorDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/app/notes/widget/dialog/StorageErrorDialogActivity$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/widget/dialog/StorageErrorDialogActivity$1;-><init>(Lcom/samsung/android/app/notes/widget/dialog/StorageErrorDialogActivity;)V

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
