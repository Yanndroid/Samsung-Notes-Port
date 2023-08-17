.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuitySessionFileManagerImpl"


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

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->lambda$registerFileInfoListener$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method private synthetic lambda$registerFileInfoListener$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->registerFileInfoListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method


# virtual methods
.method public cancelFile(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->unregisterFileInfoListener()V

    return-void
.end method

.method public registerFileInfoListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/e1;

    invoke-direct {v0, p0, p1}, Lk3/e1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .locals 2
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$3;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$3;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    move-object p4, v1

    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p1

    return p1
.end method

.method public sendFile(Ljava/lang/String;[BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->sendFile(Ljava/lang/String;[BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    move-result-object p1

    return-object p1
.end method

.method public unregisterFileInfoListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk3/d1;

    invoke-direct {v1, v0}, Lk3/d1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
