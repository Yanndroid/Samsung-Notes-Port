.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;
    }
.end annotation


# static fields
.field private static final SEM_MINIMAL_BATTERY_USE:Ljava/lang/String; = "minimal_battery_use"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioProgress:I

.field public final mIsChangedUPSM:Z

.field private mIsPlayingRecordingStated:Z

.field private mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

.field private final mPreviousViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

.field private mRecordPlayingIndex:I

.field private mRecordPlayingProgress:I

.field private mRecordingTime:I

.field private mRestoreCompleteListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;

.field private mSelectMode:Z

.field private mSelectedVoiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsContentChangedCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

.field private mSyncEnabled:Z

.field private mUpdateVoiceSyncListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;

.field private mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

.field private mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

.field private final mVoiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VoiceModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsChangedUPSM:Z

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mPreviousViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordingTime:I

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSyncEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsPlayingRecordingStated:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    const-string v3, "VoiceModel. create"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSettingsContentChangedCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    const-string v3, "minimal_battery_use"

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->addSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changeTimeType(Ljava/lang/String;)I
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    add-int/lit8 v6, v2, 0x1

    int-to-double v7, v2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v6

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public addSelectedVoice(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelRecording()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->cancelRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public changeVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isLastVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clearSelectedVoiceList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearVoiceData()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-void
.end method

.method public compareViewState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->getType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllRecordTime()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRecordingTime()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getAudioProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    return v0
.end method

.method public getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getPreviousViewStateType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mPreviousViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->getType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRecordPlayingIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    return v0
.end method

.method public getRecordPlayingProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordingTime:I

    return v0
.end method

.method public getSelectMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectMode:Z

    return v0
.end method

.method public getSelectedVoiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedVoiceListSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    return-object v0
.end method

.method public getViewStateType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->getType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    return-object v0
.end method

.method public getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getVoiceDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceDataListSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVoiceDataTimeByIndex(I)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    move v0, v1

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRecordingTime()J

    move-result-wide v2

    long-to-int v2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->changeTimeType(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method public getVoiceObject()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    return-object v0
.end method

.method public getVoiceState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-object v0
.end method

.method public hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    const/16 v4, 0x200

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v5

    if-ne v4, v5, :cond_1

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v4

    if-ne v2, v4, :cond_5

    return v3

    :cond_6
    return v1
.end method

.method public hasVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public isContainSelectedVoice(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isLastVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPauseState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPauseVoiceData()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPauseState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayRecordingStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsPlayingRecordingStated:Z

    return v0
.end method

.method public isPlayingObjectVoiceState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayingState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPlayingVoiceData()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayingVoiceDataState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayingVoiceState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRecordingVoiceState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSyncEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSyncEnabled:Z

    return v0
.end method

.method public isVoiceSyncPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isSyncEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsChangedUPSM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSettingsContentChangedCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->removeSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    const-string v1, "AudioProgress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordingTime:I

    const-string v1, "RecordTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    const-string v1, "RecordPayingIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    const-string v1, "RecordPlayingProgress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    const-string v1, "VoiceViewState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v1, "VoiceState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    const-string v1, "RecordDeleteItemIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectMode:Z

    const-string v1, "VoiceSelectMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsPlayingRecordingStated:Z

    const-string v1, "PlayRecordingStart"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public pause()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    const-string v1, "pausePlaying"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pausePlaying()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playPause()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPauseState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    const-string v1, "resumePlaying"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resumePlaying()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->pause()Z

    move-result v0

    return v0
.end method

.method public playVoiceData()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayVoiceData. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->playVoiceList(Ljava/util/ArrayList;I)Z

    if-lez v2, :cond_0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->seekTo(II)V

    :cond_0
    return-void
.end method

.method public removeErrorVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRuntimeHandle()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->removeVoiceData(I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove Voice data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeSelectedVoice(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVoiceData(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restorePlayData(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->clearVoiceData()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->getType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->RECORD:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->setType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V

    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AudioProgress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    const-string v0, "RecordTime"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordingTime:I

    const-string v0, "RecordPayingIndex"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    const-string v0, "RecordPlayingProgress"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    const-string v0, "VoiceViewState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    :cond_0
    const-string v0, "VoiceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    :cond_1
    const-string v0, "RecordDeleteItemIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    :cond_2
    const-string v0, "VoiceSelectMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectMode:Z

    const-string v0, "PlayRecordingStart"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsPlayingRecordingStated:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRestoreCompleteListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;->onMenuUpdate()V

    :cond_3
    return-void
.end method

.method public setAudioProgress(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    return-void
.end method

.method public setDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoc. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->setName(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectedVoiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPlayData(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsPlayingRecordingStated:Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPlayData. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " // "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecordData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mIsPlayingRecordingStated:Z

    return-void
.end method

.method public setRecordPlayingInfo(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    return-void
.end method

.method public setRecordingTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordingTime:I

    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordingTime:I

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-void
.end method

.method public setRestoreCompleteListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRestoreCompleteListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;

    return-void
.end method

.method public setSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSelectMode:Z

    return-void
.end method

.method public setStopData()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStopData. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " // "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mAudioProgress:I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingIndex:I

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mRecordPlayingProgress:I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-void
.end method

.method public setSyncEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mSyncEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mUpdateVoiceSyncListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;->onEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setUpdateVoiceSyncListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mUpdateVoiceSyncListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;

    return-void
.end method

.method public setViewStateType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewStateType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mPreviousViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->getType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->setType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->setType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V

    return-void
.end method

.method public setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-void
.end method

.method public stopPlaying()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    const-string v1, "stopPlaying"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopPlaying()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public stopRecording()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateOnlyScreenOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mUpdateVoiceSyncListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;->onEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateVoiceData(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->mVoiceData:Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    return-void
.end method
