.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCreateDate:J

.field private mDeleteVisible:Z

.field private mIsPlayingVisible:Z

.field private mName:Ljava/lang/String;

.field private mPlayTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mPlayTime:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mCreateDate:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mDeleteVisible:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mIsPlayingVisible:Z

    return-void
.end method


# virtual methods
.method public getCreateDate()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mCreateDate:J

    return-wide v0
.end method

.method public getDeleteVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mDeleteVisible:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mPlayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mIsPlayingVisible:Z

    return v0
.end method

.method public setCreateDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mCreateDate:J

    return-void
.end method

.method public setDeleteVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mDeleteVisible:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mPlayTime:Ljava/lang/String;

    return-void
.end method

.method public setPlayingVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->mIsPlayingVisible:Z

    return-void
.end method
