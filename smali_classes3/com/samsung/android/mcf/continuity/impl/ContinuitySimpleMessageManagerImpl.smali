.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuitySimpleMessageManagerImpl"


# instance fields
.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->lambda$unregisterMessageListener$1()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->lambda$registerMessageListener$0(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method private synthetic lambda$registerMessageListener$0(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendRegisterSimpleMessageListenerCommand()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ContinuitySimpleMessageManagerImpl"

    const-string v0, "registerMessageListener"

    const-string v1, "fail sendRegisterMessageListenerCommand"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$unregisterMessageListener$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendUnregisterSimpleMessageListenerCommand()Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method public getMessageIntentAction()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string v1, "getMessageIntentAction"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->getMessageIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerMessageIntentListener(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string v1, "registerMessageIntentListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendRegisterMessageIntentListenerCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string v1, "registerMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/u1;

    invoke-direct {v0, p0, p1}, Lk3/u1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Ljava/lang/String;[B)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string v1, "sendMessage"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendSimpleMessageCommand(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public unregisterMessageIntentListener()V
    .locals 3

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "unregisterMessageIntentListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendUnregisterMessageIntentListenerCommand()Z

    return-void
.end method

.method public unregisterMessageListener()V
    .locals 3

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "unregisterMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/t1;

    invoke-direct {v0, p0}, Lk3/t1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
