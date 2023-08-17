.class Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentLoadListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadNoteCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->setNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public onLoadNoteFailed(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
