.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;
    }
.end annotation


# static fields
.field private static final ANIMATE_HIDE:Z = false

.field private static final ANIMATE_SHOW:Z = true

.field private static final ANIMATE_SHOW_DURATION:I = 0x3e8

.field private static final CENTER_PIVOT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "FabMenuView"


# instance fields
.field private final mAnimatorHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

.field private mFakeFab:Landroid/view/View;

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mNewDirection:Z

.field private mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private final mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

.field private mOldDirection:Z

.field private final mShowNoteFabScrollFinished:Ljava/lang/Runnable;

.field private mToolType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mToolType:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mOldDirection:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mAnimatorHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mShowNoteFabScrollFinished:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->initFakeFab()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mOldDirection:Z

    return-void
.end method

.method private initFakeFab()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->fake_fab:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFakeFab:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFakeFab:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFakeFab:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isFabCanVisible(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCreateNewNoteEnabled(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isStyleDialogNeed()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    const-string v3, "settings_page_style_and_template_first_time"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_preferred_note_style"

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v1, v4

    :cond_1
    :goto_0
    return v1
.end method

.method private isViewStubExistOnActivity(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->fake_fab:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->note_fab:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewStub;

    return p1
.end method

.method private setFabDisplay()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mOldDirection:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->setNoteFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->getVerticalOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->setNoteFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mOldDirection:Z

    return-void
.end method


# virtual methods
.method public inflateFab()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "FabMenuView"

    const-string v1, "inflateFab# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->isViewStubExistOnActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->note_fab:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_note_fab:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->note_fab:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->string_create:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->setNoteFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->OpenActivity:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidSingleActionEvent(Z[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->MemoList:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingSingleActionEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->isStyleDialogNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mToolType:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showStyleDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mToolType:I

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->onNewNote(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    :cond_3
    :goto_0
    return-void
.end method

.method public onListScrollStateChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->getModeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCreateNewNoteEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLastOpenedSDocXUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->isViewStubExistOnActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->inflateFab()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->note_fab:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mOldDirection:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mOldDirection:Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setIsScrolling(Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mShowNoteFabScrollFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mShowNoteFabScrollFinished:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onListScrolled(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->getModeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCreateNewNoteEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNewDirection:Z

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->setFabDisplay()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mShowNoteFabScrollFinished:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mShowNoteFabScrollFinished:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mToolType:I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setNoteFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;->getModeIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->isFabCanVisible(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFakeFab:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mFakeFab:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v1, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNoteFabVisibility# modeIndex : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", animateShow : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FabMenuView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mNoteFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->getSineInOut80()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->getSineInOut80()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->mAnimatorHideListener:Landroid/animation/Animator$AnimatorListener;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    :goto_1
    return-void
.end method
