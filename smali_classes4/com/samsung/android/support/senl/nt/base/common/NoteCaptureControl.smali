.class public Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    return-void
.end method


# virtual methods
.method public capturePage(F)Landroid/graphics/Bitmap;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public capturePage(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->capturePage(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public captureRect(Landroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->captureRect(Landroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackgroundColorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->setBackgroundColorEnabled(Z)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->setColorTheme(I)V

    return-void
.end method

.method public setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->mCapturePage:Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method
