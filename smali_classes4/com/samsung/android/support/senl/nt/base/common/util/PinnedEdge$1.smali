.class Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->c(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->b(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->b(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->a(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;->onStateChanged(Z)V

    :cond_0
    return-void
.end method
