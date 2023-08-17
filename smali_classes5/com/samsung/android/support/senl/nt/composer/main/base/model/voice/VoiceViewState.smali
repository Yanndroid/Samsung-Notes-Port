.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    return-void
.end method


# virtual methods
.method public canCollapseStraight()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->LIST:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NORMAL_PLAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public canHideState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EXTEND:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->LIST:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NORMAL_PLAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public canUpdateRecordingTime()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->isInitState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->isRecordState()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    return-object v0
.end method

.method public isInitState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->VOICEINIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->VOICEINIT_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isMinimized()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->VOICEINIT_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->RECORD_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isRecordState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->RECORD:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->RECORD_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isShowingRecordingState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EXTEND:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->LIST:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isVisibleState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->HIDE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->mViewStateType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
