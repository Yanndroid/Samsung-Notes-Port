.class public Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private final mSpeakerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mSpeakerList:Ljava/util/List;

    const-class v1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mSpeakerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    iget-object v2, p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakerInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mSpeakerList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mExtras:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TtsPackageInfo{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeakerList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mSpeakerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mType:Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageType;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mSpeakerList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
