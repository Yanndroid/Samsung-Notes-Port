.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionLanguageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageListForDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguage:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applySelectedLanguage()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSelectedLanguage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;->setLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelectedLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;->mLocale:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;->mLanguageRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageListForDisplay:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;->mLanguageRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;->mPosition:I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_hw_toolbar_convert_radio_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$AdapterContract;)V

    return-object p2
.end method

.method public setLanguageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mSelectedLanguage:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageListForDisplay:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$RecognitionLanguageAdapter;->mLanguageListForDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
