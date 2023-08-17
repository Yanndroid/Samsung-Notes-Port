.class public Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final dictationType:Ljava/util/Set;
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
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledPartial:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledAudioCompression:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->isCensored:Z

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->NETWORK:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverType:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lambda$build$2()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lambda$removeDictationType$1(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lambda$addDictationType$0(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addDictationType$0(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static synthetic lambda$build$2()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;->DICTATION_ASR:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getCurrentServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$removeDictationType$1(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public varargs addDictationType([Lcom/samsung/android/sdk/scs/ai/asr/DictationType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/s0;->a:Lcom/samsung/android/sdk/scs/ai/asr/s0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/r0;->a:Lcom/samsung/android/sdk/scs/ai/asr/r0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/p0;->a:Lcom/samsung/android/sdk/scs/ai/asr/p0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$1;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$100(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$200(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledPartial:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$300(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledAudioCompression:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$400(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->isCensored:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$500(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverType:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$600(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$700(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Set;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/t0;->a:Lcom/samsung/android/sdk/scs/ai/asr/t0;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->access$800(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)V

    return-object v0
.end method

.method public enableAudioCompression(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledAudioCompression:Z

    return-object p0
.end method

.method public enableCensor(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->isCensored:Z

    return-object p0
.end method

.method public enablePartialResult(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledPartial:Z

    return-object p0
.end method

.method public varargs removeDictationType([Lcom/samsung/android/sdk/scs/ai/asr/DictationType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/s0;->a:Lcom/samsung/android/sdk/scs/ai/asr/s0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/q0;->a:Lcom/samsung/android/sdk/scs/ai/asr/q0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/p0;->a:Lcom/samsung/android/sdk/scs/ai/asr/p0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public setServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    return-object p0
.end method

.method public setServerType(I)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverType:I

    return-object p0
.end method

.method public setType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    return-object p0
.end method
