.class public Lcom/samsung/android/sdk/scs/ai/AiServices;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppCategorizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategorizer;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategorizer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategorizer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBasicEntityExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBasicNlpAnalyzer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/bnlp/BasicNlpAnalyzer;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/BasicNlpAnalyzer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/BasicNlpAnalyzer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBoundaryDetector(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDocumentCategoryClassifier(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEventExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getFolderNameSuggester(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getImageUpscaler(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getKeyPhraseExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getKeywordSuggester(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLanguageDetector(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/language/LanguageDetector;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/language/LanguageDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/language/LanguageDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSpeechRecognizer(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    return-object v0
.end method
