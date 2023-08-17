.class public Lcom/samsung/android/mcf/continuity/impl/Injection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContinuityCallbackManager()Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;-><init>()V

    return-object v0
.end method

.method public static createContinuityCommandManager(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;-><init>(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)V

    return-object v0
.end method

.method public static createContinuityDiscoveryManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;)Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;)V

    return-object v0
.end method

.method public static createContinuitySession(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)V

    return-object v0
.end method

.method public static createContinuitySessionFileManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method public static createContinuitySessionManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method public static createContinuitySessionMessageManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method public static createContinuitySimpleMessageManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;
    .locals 1
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)V

    return-object v0
.end method
