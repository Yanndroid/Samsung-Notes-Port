.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$ViewHolder;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentLanguage:Ljava/lang/String;

.field private mInsertType:I

.field private mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

.field private mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

.field private mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

.field private mView:Landroid/view/View;

.field private mWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ConvertSettingDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->updateAddLanguageButton()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->updateLayout()V

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->initLanguage(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    return-void
.end method

.method private initDoneButton(Landroidx/appcompat/app/AlertDialog;Z)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_done:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;Z)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private initInsertType(Z)V
    .locals 5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->body_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->text_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    const-string v2, "7811"

    const-string v3, "733"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected insertType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string p1, "1"

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string p1, "2"

    :goto_0
    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->insert_type_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->insert_type:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initLanguage(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isDataCallNotLimitedForApp()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->init(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->updateLanguageList()V

    return-void
.end method

.method private loadLanguageList()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->initTextRecognitionLanguage(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->getLanguageListForTextRecognition()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLanguageList# language list size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->getFirstLanguageForTextRecognition()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage$SupportedLanguageException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLanguageList# update current language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    const-string v2, "settings_handwriting_convert_to_text_language"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLanguageList# e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "loadLanguageList# language list is empty!!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateAddLanguageButton()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isInstallable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isPreloaded()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAddLanguageButton# list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "updateAddLanguageButton# language list is null!!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$id;->add_language_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateLanguageList()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->loadLanguageList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageList:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;->setLanguageList(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isInitFinished(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$InitFinishedListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->updateLanguageList()V

    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "getPresenter()# Presenter is null. dismiss call"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "mLanguage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    const-string v2, "mInsertType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    const-string v3, "settings_handwriting_convert_to_text_language"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v2, "settings_handwriting_recognition_insert_type"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->init()V

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;->isSupportedBodyText()Z

    move-result p1

    :cond_1
    if-nez p1, :cond_2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog(). mCurrentLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mInsertType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_hw_toolbar_convert_setting:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->language_recyclerview_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->add_language_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->initInsertType(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->hw_toolbar_convert_select_language:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v1, -0x2

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_cancel:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->initDoneButton(Landroidx/appcompat/app/AlertDialog;Z)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;->isFloatingViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume# isFloatingViewShown false"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mRecognitionLanguageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$RecognitionLanguageAdapter;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mLanguage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->mInsertType:I

    const-string v1, "mInsertType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
