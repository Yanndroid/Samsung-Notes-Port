.class public Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isPlaying:Z

.field private mName:Ljava/lang/String;

.field private mPlayTime:Ljava/lang/String;

.field private mRecognizeResult:Landroid/text/SpannableStringBuilder;

.field private mText:[Ljava/lang/String;

.field private mTimeStamp:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->isPlaying:Z

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mRecognizeResult:Landroid/text/SpannableStringBuilder;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mPlayTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearSpan()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mRecognizeResult:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mPlayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizeResult()Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mRecognizeResult:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getText()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mText:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mTimeStamp:[I

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->isPlaying:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mPlayTime:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->isPlaying:Z

    return-void
.end method

.method public setRecognizeResult(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mRecognizeResult:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setRecognizeResult(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mRecognizeResult:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setText([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mText:[Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->mTimeStamp:[I

    return-void
.end method
