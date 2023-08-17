.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayStatus clicked# isUncontrollableViewer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;->isUncontrollableViewer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;->isUncontrollableViewer()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;->reloadVideo(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;->togglePlayback()V

    :goto_0
    return-void
.end method
