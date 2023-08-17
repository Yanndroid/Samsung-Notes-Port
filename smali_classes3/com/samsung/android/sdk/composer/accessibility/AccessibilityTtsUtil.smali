.class public Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mSpeakOnInit:Ljava/lang/CharSequence;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AccessibilityTtsUtil"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mIsInitialized:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mSpeakOnInit:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getTts()Landroid/speech/tts/TextToSpeech;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x64

    const-string/jumbo v3, "tts_default_pitch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method private sendAccessibilityEvent(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isTalkBackEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInit(I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->TAG:Ljava/lang/String;

    const-string v0, "onInit"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mIsInitialized:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mSpeakOnInit:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->speak(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mSpeakOnInit:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "speak "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mIsInitialized:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->sendAccessibilityEvent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tts not initialized "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->mSpeakOnInit:Ljava/lang/CharSequence;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public speakWithVibrator(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityTtsUtil;->speak(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
