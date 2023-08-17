.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->initDoneButton(Landroidx/appcompat/app/AlertDialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

.field public final synthetic val$isSupportedBodyText:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->val$isSupportedBodyText:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;->saveSelectedLanguage()V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->val$isSupportedBodyText:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->insert_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->body_text:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;I)V

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)I

    move-result p2

    const-string v0, "settings_handwriting_recognition_insert_type"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->h()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saved insertType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const-string p1, "733"

    const-string p2, "7812"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
