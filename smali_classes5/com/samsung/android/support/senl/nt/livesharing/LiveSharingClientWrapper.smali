.class public Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LS$LiveSharingClientWrapper"


# instance fields
.field private final mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingEmptyClientDelegate;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingEmptyClientDelegate;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTesting()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notestest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;",
            ")",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    const-string v0, "LS$LiveSharingClientWrapper"

    const-string v1, "beginCoDoing#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "beginCoDoing# meeting is not connected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NOT_CONNECTED:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isCoDoing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "beginCoDoing# CoDoing is already in progress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->ALREADY_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1
.end method

.method public connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ")",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    const-string v0, "LS$LiveSharingClientWrapper"

    const-string v1, "connectMeeting#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "connectMeeting# already connected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->ALREADY_CONNECTED:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1
.end method

.method public disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    const-string v0, "LS$LiveSharingClientWrapper"

    const-string v1, "disconnectMeeting#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isCoDoing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "disconnectMeeting# meeting is not connected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NOT_CONNECTED:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1
.end method

.method public endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    const-string v0, "LS$LiveSharingClientWrapper"

    const-string v1, "endCoDoing#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "endCoDoing# meeting is not connected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NOT_CONNECTED:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isCoDoing()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "endCoDoing# CoDoing is not in progress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NOT_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1
.end method

.method public getLastMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->getMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    return-void
.end method

.method public sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSharingData# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingClientWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "sendSharingData# meeting is not connected"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NOT_CONNECTED:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->isCoDoing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "sendSharingData# CoDoing is not in progress"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NOT_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->isValidSize()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSharingData## data is exceeded 1MB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->convertBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->OVER_SIZE_DATA:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->mLiveSharingClientDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;->sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1
.end method
