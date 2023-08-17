.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuitySessionMessageManagerImpl"


# instance fields
.field private final mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionMessageManagerImpl"

    const-string v1, "registerMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Ljava/lang/String;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionMessageManagerImpl"

    const-string v1, "sendMessage"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->sendMessage(Ljava/lang/String;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z

    move-result p1

    return p1
.end method

.method public unregisterMessageListener()V
    .locals 3

    const-string v0, "ContinuitySessionMessageManagerImpl"

    const-string/jumbo v1, "unregisterMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->unregisterMessageListener()V

    return-void
.end method
