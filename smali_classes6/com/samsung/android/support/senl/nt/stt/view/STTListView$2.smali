.class Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWordEdit(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->c(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->c(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;->onWordEdit(II)V

    :cond_0
    return-void
.end method

.method public onWordTouched(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->c(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->c(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;->onWordTouch(II)V

    :cond_0
    return-void
.end method
