.class Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->requestLoadDocument()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
