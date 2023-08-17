.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;->createAlertDialog()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->applySelectedLanguage()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
