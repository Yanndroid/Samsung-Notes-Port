.class public Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final KEY_BUTTON_VISIBILITY:Ljava/lang/String; = "key_button_visibility"

.field private static final KEY_IS_ALREADY_SIGNED:Ljava/lang/String; = "key_already_signed"

.field private static final NOT_CHECKED:I = -0x1

.field private static final NOT_SIGNED:I = 0x0

.field private static final SIGNED:I = 0x1


# instance fields
.field private mButtonVisibility:I

.field private mIsSigned:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mButtonVisibility:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    return p0
.end method

.method private checkedIsSigned()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkedIsSigned# IsSigned : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SignInFTUActivity"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mButtonVisibility:I

    return-void
.end method

.method private initLayout()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->sign_in_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mButtonVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_get_start:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->button_sign_in:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->sign_in_ftu_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const-string v1, "key_button_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mButtonVisibility:I

    const/4 v0, -0x1

    const-string v1, "key_already_signed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->checkedIsSigned()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->initLayout()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mButtonVisibility:I

    const-string v1, "key_button_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->mIsSigned:I

    const-string v1, "key_already_signed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
