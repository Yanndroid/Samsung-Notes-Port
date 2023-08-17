.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/LiveSharingContract;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

.field private final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/LiveSharingContract$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

.field private mPendingShowConfirmDialog:Ljava/lang/Runnable;

.field private final mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LiveSharingTasker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mListenerList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mListenerList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-void
.end method

.method private createShowConfirmDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mPendingShowConfirmDialog:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Z)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->createShowConfirmDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Z)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private registerMeetingDisconnectHandler(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "sdoc_uuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isCoEditingNote(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->TAG:Ljava/lang/String;

    const-string v0, "registerMeetingDisconnectHandler#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->registerMeetingDisconnectHandler(Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v0, "7682"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isLiveSharingNote()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "sdoc_uuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->disconnectMeeting(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->isLiveSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mPendingShowConfirmDialog:Ljava/lang/Runnable;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->stopQueryMeeting(Landroid/content/Context;)V

    return-void
.end method

.method public onResume(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->isLiveSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->COMPOSER:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->requestQueryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->isLiveSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->registerMeetingDisconnectHandler(Landroid/app/Activity;)V

    return-void
.end method

.method public runPending()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mPendingShowConfirmDialog:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/LiveSharingContract$Listener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
