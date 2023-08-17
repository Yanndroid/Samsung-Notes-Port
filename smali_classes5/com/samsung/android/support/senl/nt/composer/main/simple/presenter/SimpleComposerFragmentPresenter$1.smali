.class Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->onDestroy()V

    return-void
.end method
