.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->lambda$registerFileInfoListener$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

.field public final synthetic val$fileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;->val$fileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;->lambda$onFileInfoReceived$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method

.method private static synthetic lambda$onFileInfoReceived$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method


# virtual methods
.method public onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$1;->val$fileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    new-instance v1, Lk3/f1;

    invoke-direct {v1, v0, p1, p2}, Lk3/f1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
