.class public Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    }
.end annotation


# instance fields
.field private dictationType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr/DictationType;",
            ">;"
        }
    .end annotation
.end field

.field private enabledAudioCompression:Z

.field private enabledPartial:Z

.field private isCensored:Z

.field private locale:Ljava/util/Locale;

.field private serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

.field private serverType:I
    .annotation build Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
    .end annotation
.end field

.field private type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setConnectionType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enablePartialResult(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enableAudioCompression(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enableCensor(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setServerType(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setDictationTypes(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)V

    return-void
.end method

.method private enableAudioCompression(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledAudioCompression:Z

    return-void
.end method

.method private enableCensor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isCensored:Z

    return-void
.end method

.method private enablePartialResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledPartial:Z

    return-void
.end method

.method private setConnectionType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    return-void
.end method

.method private setDictationTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr/DictationType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->locale:Ljava/util/Locale;

    return-void
.end method

.method private setServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    return-void
.end method

.method private setServerType(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverType:I

    return-void
.end method


# virtual methods
.method public enabledPartialResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledPartial:Z

    return v0
.end method

.method public getConnectionType()Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    return-object v0
.end method

.method public getDictationTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr/DictationType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/p0;->a:Lcom/samsung/android/sdk/scs/ai/asr/p0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getServerInfo()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    return-object v0
.end method

.method public getServerType()I
    .locals 1
    .annotation build Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverType:I

    return v0
.end method

.method public isCensored()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isCensored:Z

    return v0
.end method

.method public isEnabledAudioCompression()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledAudioCompression:Z

    return v0
.end method
