.class public Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;
    }
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field private mUUid:Ljava/lang/String;

.field private mWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mUUid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mWidgetId:I

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "widget.MEMO_CONVERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sdoc_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mUUid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "doc_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "note_none"

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mUUid:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mPath:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->mWidgetId:I

    new-instance p1, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;-><init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;->setListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method
