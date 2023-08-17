.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createFileInfoListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic val$fileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;->val$fileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;-><init>()V

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

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;->val$fileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method
