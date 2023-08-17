.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MISSING_LANGUAGE:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

.field private mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

.field private mInputMM:Landroid/view/inputmethod/InputMethodManager;

.field private mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

.field private mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DwKeyboardLanguage"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mInputMM:Landroid/view/inputmethod/InputMethodManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    return-void
.end method

.method private getCurrentKeyboardLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mInputMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "InputMethodSubtype is null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLanguageListForTextRecognition()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->initTextRecognitionLanguage(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mTextRecognitionLanguage:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->getLanguageListForTextRecognition()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/constants/DirectWriteConstant;->IGNORE_CASE_IN_LANGUAGE:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private translateSupportedLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->getLanguageListForTextRecognition()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v2
.end method

.method private updateCurrentKeyboardLanguage()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->getCurrentKeyboardLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->setKeyboardLanguage(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->updateRecognitionLanguageMatch(Ljava/lang/String;)V

    return-void
.end method

.method private updateLanguage(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->TAG:Ljava/lang/String;

    const-string v2, "updateLanguage"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->translateSupportedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched between stored value ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") and recognition list "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "en_US"

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->setDirectWriteLanguage(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current supported language is "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->updateSTTRecognitionLanguage(Ljava/lang/CharSequence;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecognitionLanguageMatch(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->translateSupportedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->setLanguageMatching(Z)V

    return-void
.end method


# virtual methods
.method public applyRecognitionLanguage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->getDirectWriteLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not_selected_recognition_language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->updateCurrentKeyboardLanguage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->isLanguageMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->getKeyboardLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->translateSupportedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "en_US"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->setDirectWriteLanguage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->showDirectWriteSettingDialog()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwKeyboardLanguage;->updateLanguage(Ljava/lang/String;)V

    return-void
.end method
