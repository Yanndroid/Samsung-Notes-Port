.class public Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MeridianDialogFragment"


# instance fields
.field private mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->meridian_dialog_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_sync_login_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->negative_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->positive_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;

    return-void
.end method
