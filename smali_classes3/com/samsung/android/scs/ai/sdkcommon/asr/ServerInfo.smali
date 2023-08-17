.class public final Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
.super Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endpoint:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerInfo{endpoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;->endpoint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
