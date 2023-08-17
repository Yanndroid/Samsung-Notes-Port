.class Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->onSTTError(ILjava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->onSTTPartialResults(Ljava/lang/String;[I)V

    return-void
.end method

.method public onResults(Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->onSTTPartialResults(Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->a(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;)Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->getListText()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->onSTTResult([Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->b(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;)V

    return-void
.end method
