.class public Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CopyThread"


# instance fields
.field private final mDstPath:Ljava/lang/String;

.field private final mListener:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;

.field private final mSrcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mSrcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mDstPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mSrcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mDstPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;->onFinished(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CopyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;->onFailed()V

    :goto_0
    return-void
.end method
