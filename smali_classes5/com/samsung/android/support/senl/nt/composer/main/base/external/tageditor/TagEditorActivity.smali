.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;


# static fields
.field private static final TAG:Ljava/lang/String; = "TagEditorActivity"


# instance fields
.field private mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

.field private mCurrentState:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

.field private mEditorUI:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

.field private mIsBackPressed:Z

.field private mStateChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->INITIALIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mCurrentState:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mIsBackPressed:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->save(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    return-void
.end method

.method private notifyStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->notifyStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;Z)V

    return-void
.end method

.method private notifyStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mCurrentState:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mCurrentState:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;->onStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private save(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p2, "result_selected_tags"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "result_unselected_tags"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/Utils;->setStatusBarForLandscape(Landroid/app/Activity;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->activity_tag_board:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->applyBackground(Landroid/content/Context;Landroid/view/Window;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mEditorUI:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->initView(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mEditorUI:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "selected_tags"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mEditorUI:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->initCandidateTagList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/Utils;->setStatusBarForLandscape(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mIsBackPressed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->DESTROYED_WITHOUT_SAVE:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->notifyStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mIsBackPressed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->DESTROYED_WITH_SAVE:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->notifyStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->resetBackground(Landroid/view/Window;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mIsBackPressed:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->RESUME:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->notifyStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;->mStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
