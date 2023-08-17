.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;
.super Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final DIRECTION_CENTER:I = 0x2

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final EMPTY_DATA:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RecyclerViewHelper$LongPressRangeSelectionListener"


# instance fields
.field public mCurrentPosition:I

.field public mDirection:I

.field public mFolderCount:I

.field public mIsNotAccessPosition:Z

.field public mLastPosition:I

.field public mLastX:F

.field public mRecyclerViewWidth:I

.field public mStartPosition:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mDirection:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastPosition:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mFolderCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mIsNotAccessPosition:Z

    return-void
.end method

.method private setFolderSelectState(II)V
    .locals 7

    const-string v0, "RecyclerViewHelper$LongPressRangeSelectionListener"

    if-gez p1, :cond_0

    const-string p1, "setFolderSelectState# holderPosition under 0"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFolderSelectState# "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastX:F

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastX:F

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSubFoldersSpan()I

    move-result v2

    const-string v4, "folderSpan : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", holderPosition : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lastPosition : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mRecyclerViewWidth : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastX : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastX:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    mul-int/2addr p1, v2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastX:F

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr p1, v4

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_4

    const-string p1, "setFolderSelectState# mCurrentPosition under 0"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    if-ne v4, v3, :cond_5

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    :cond_5
    const-string p1, ", mCurrentPosition : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mStartPosition : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastPosition:I

    if-ne p2, v3, :cond_6

    move p2, p1

    :cond_6
    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, p1, :cond_7

    const/4 v6, 0x2

    goto :goto_1

    :cond_7
    if-le v3, p1, :cond_8

    move v6, v4

    goto :goto_1

    :cond_8
    move v6, v5

    :goto_1
    iput v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mDirection:I

    if-ge v3, p2, :cond_9

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_9
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    if-le v3, p2, :cond_a

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_3

    :cond_a
    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_3
    const-string v3, ", mDirection : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mDirection:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", min : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    if-gt p1, p2, :cond_e

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mDirection:I

    if-ne v3, v5, :cond_c

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->isNeedChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    if-lt p1, v6, :cond_b

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    if-gt p1, v6, :cond_b

    :goto_5
    move v6, v5

    goto :goto_6

    :cond_b
    move v6, v4

    :goto_6
    invoke-interface {v3, p1, v6, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;->dragFolderSelectState(IZI)V

    goto :goto_7

    :cond_c
    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->isNeedChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    if-gt p1, v6, :cond_b

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    if-lt p1, v6, :cond_b

    goto :goto_5

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->isNeedChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    if-ne p1, v6, :cond_b

    goto :goto_5

    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    const/16 v2, 0x19

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesUUIDForWidgetList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_max_select_note_for_widget:I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/16 p4, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, v1

    invoke-virtual {p1, p2, p4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    if-ltz p3, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mIsNotAccessPosition:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->selectedItemPositionList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mFolderCount:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastPosition:I

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->setFolderSelectState(II)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result p2

    const/16 p4, 0x20

    if-ne p2, p4, :cond_7

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object p2

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedDimedNotes(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->isNeedChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->selectedItemPositionList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;->dragNoteSelectState(IZ)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$IPresenter;->dragNoteSelectState(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->hasHolderInfo(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    const-wide/16 p2, -0x10

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;J)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    const-wide/16 p2, -0xf

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;J)V

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->updateSelectedNoteCount()V

    return-void

    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected# position : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isNotAccessPosition : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mIsNotAccessPosition:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerViewHelper$LongPressRangeSelectionListener"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mIsNotAccessPosition:Z

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->onLongPressMultiSelectionEnded(II)V

    const-string p1, "RecyclerViewHelper$LongPressRangeSelectionListener"

    const-string p2, "onLongPressMultiSelectionEnded"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mStartPosition:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastPosition:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->showBottomNavigation(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->endPressed()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->setAutoScrollEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->checkAutoScroll()V

    :cond_1
    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->onLongPressMultiSelectionStarted(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    const-string p2, "RecyclerViewHelper$LongPressRangeSelectionListener"

    if-nez p1, :cond_0

    const-string p1, "onLongPressMultiSelectionStarted entry null"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "onLongPressMultiSelectionStarted"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mFolderCount:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mRecyclerViewWidth:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mDirection:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    return-void
.end method

.method public onTouchEvent(FF)Z
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_7

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_3

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mIsNotAccessPosition:Z

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mFolderCount:I

    if-gtz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    move p2, v2

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastX:F

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mCurrentPosition:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSubFoldersSpan()I

    move-result p2

    div-int/2addr p1, p2

    :goto_1
    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mLastPosition:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->setFolderSelectState(II)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result p1

    const/16 p2, 0x10

    if-le p1, p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->updateSelectedNoteCount()V

    return v2

    :cond_6
    :goto_2
    return v3

    :cond_7
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$2;->mIsNotAccessPosition:Z

    return v3
.end method
