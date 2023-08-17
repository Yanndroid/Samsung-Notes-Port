.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->sendFile(Ljava/lang/String;[BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

.field public final synthetic val$fileStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;->val$fileStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;->lambda$onFileStatusUpdated$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    return-void
.end method

.method private static synthetic lambda$onFileStatusUpdated$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method


# virtual methods
.method public onFileStatusUpdated(ID)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$2;->val$fileStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    new-instance v1, Lk3/g1;

    invoke-direct {v1, v0, p1, p2, p3}, Lk3/g1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
