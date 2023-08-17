.class public Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$EditSTTResult;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x32

.field private static final TAG:Ljava/lang/String; = "EditSTTDialog"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

.field private mShowSIP:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$4;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mShowSIP:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->setListener(Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->lambda$showSoftInputKeyboard$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mShowSIP:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static getNameFilter(Landroid/app/Activity;ZI)[Landroid/text/InputFilter;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$string;->maximum_number_of_characters_reached:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const/16 v1, 0x32

    if-eqz p1, :cond_0

    if-ge v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$3;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$3;-><init>(ILandroid/widget/Toast;)V

    aput-object p1, v0, v2

    return-object v0
.end method

.method private synthetic lambda$showSoftInputKeyboard$0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_0
    const-string v0, "EditSTTDialog"

    const-string v1, "try to show SIP but activity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setListener(Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    return-void
.end method

.method private showSoftInputKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/dialog/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/a;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$layout;->edit_stt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout;

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout;->setOnWindowFocusChangeListener(Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->edit_stt_field:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->edit_stt_delete:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "word"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    const-string v3, "disableVoiceInput=true"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->getNameFilter(Landroid/app/Activity;ZI)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "result_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;->onDialogResult(Landroidx/fragment/app/DialogFragment;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x6

    if-eq v0, p2, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "result_code"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "word"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->mInterface:Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;

    invoke-interface {p3, p0, p2}, Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;->onDialogResult(Landroidx/fragment/app/DialogFragment;Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->showSoftInputKeyboard()V

    return-void
.end method
