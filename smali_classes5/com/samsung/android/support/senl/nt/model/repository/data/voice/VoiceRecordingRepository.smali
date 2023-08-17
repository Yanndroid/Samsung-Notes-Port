.class public Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContentIndex:I

.field public mFilePath:Ljava/lang/String;

.field public mProcessId:I

.field public mTargetPageIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mContentIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mTargetPageIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mProcessId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mContentIndex:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mTargetPageIndex:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mProcessId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mContentIndex:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mProcessId:I

    return v0
.end method

.method public getTargetPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mTargetPageIndex:I

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mContentIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mProcessId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRecordingInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->getContentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetPageIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->getTargetPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->getProcessId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mContentIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mTargetPageIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;->mProcessId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
