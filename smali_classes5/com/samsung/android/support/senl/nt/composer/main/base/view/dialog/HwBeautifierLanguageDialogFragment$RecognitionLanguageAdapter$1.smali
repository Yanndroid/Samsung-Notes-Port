.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$AdapterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick(). selectedLanguage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
