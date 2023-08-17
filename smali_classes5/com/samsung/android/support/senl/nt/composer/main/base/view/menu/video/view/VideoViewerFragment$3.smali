.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;->initAudioToggle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewer;->toggleAudio()V

    return-void
.end method
