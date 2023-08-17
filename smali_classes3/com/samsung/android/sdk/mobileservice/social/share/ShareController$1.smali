.class Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;
.super Lcom/samsung/android/sdk/mobileservice/social/share/IShareStatusCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->setShareStatusListener(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/share/IShareStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShareStatusListener onComplete : mRequestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$000(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->getReference(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareController"

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "totalBytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v2, "totalBytesTransferred"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v2, "totalFileCount"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v2, "totalFileCountTransferred"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v2, "currentFileBytes"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v2, "currentFileBytesTransferred"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v2, "currentFileIndex"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;-><init>(JJIIJJI)V

    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;->onComplete(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShareStatusListener onPause : mRequestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$000(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->getReference(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareController"

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "totalBytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v2, "totalBytesTransferred"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v2, "totalFileCount"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v2, "totalFileCountTransferred"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v2, "currentFileBytes"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v2, "currentFileBytesTransferred"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v2, "currentFileIndex"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;-><init>(JJIIJJI)V

    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;->onPause(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShareStatusListener onResume : mRequestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$000(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->getReference(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareController"

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "totalBytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v2, "totalBytesTransferred"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v2, "totalFileCount"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v2, "totalFileCountTransferred"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v2, "currentFileBytes"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v2, "currentFileBytesTransferred"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v2, "currentFileIndex"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;-><init>(JJIIJJI)V

    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    invoke-static {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;->access$100(Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;->onResume(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V

    :cond_0
    return-void
.end method
