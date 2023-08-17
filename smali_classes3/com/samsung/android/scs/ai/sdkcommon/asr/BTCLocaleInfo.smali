.class public Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;
.super Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

.field private final ttsPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final ttsSpeaker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    const-class v2, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    iput-object v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    const-class v2, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;ILcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->lambda$getDefaultPackages$0(Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getDefaultPackages$0(Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->getSpeakerInfo()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;->describeContents()I

    move-result v0

    return v0
.end method

.method public getDefaultPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDefaultSpeaker()Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    return-object v0
.end method

.method public getTtsPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    return-object v0
.end method

.method public getTtsSpeakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    return-object v0
.end method

.method public setPackageInfo(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setSpeakerInfo(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTCLocaleInfo{localeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSpeaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
