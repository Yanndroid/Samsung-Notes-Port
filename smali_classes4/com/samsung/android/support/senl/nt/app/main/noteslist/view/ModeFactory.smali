.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeFactory"


# instance fields
.field public mCoeditEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditEditMode;

.field public mCoeditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

.field public mCoeditSpaceEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceEditMode;

.field public mCoeditSpaceMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

.field public mEdit:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;

.field public mHashTagEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;

.field public mHashTagMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;

.field public final mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

.field public mOldEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;

.field public mOldSelectMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;

.field public mPickEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;

.field public mPickEditSearchMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

.field public mPickEditSearchWidgetMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;

.field public mPickEditWidgetMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditWidgetMode;

.field public mPickMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickMode;

.field public mRecycleBinEdit:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinEditMode;

.field public mRecycleBinSelect:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

.field public mSearchEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchEditMode;

.field public mSearchMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

.field public mSelect:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    return-void
.end method


# virtual methods
.method public getMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected indexMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ModeFactory"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditSearchWidgetMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditSearchWidgetMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditWidgetMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditWidgetMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditWidgetMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditWidgetMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditWidgetMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditWidgetMode;

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsGroupMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsGroupMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldCategoryMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldCategoryMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mOldEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mOldEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mOldSelectMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mOldSelectMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagDetailMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagDetailMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mHashTagEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mHashTagEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;

    goto/16 :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mHashTagMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mHashTagMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;

    goto/16 :goto_0

    :pswitch_a
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditSpaceEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditSpaceEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceEditMode;

    goto/16 :goto_0

    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditSpaceMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditSpaceMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    goto/16 :goto_0

    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditEditMode;

    goto/16 :goto_0

    :pswitch_e
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mCoeditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    goto/16 :goto_0

    :pswitch_f
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditSearchMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditSearchMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    goto/16 :goto_0

    :pswitch_12
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;

    goto :goto_0

    :pswitch_13
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mPickMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickMode;

    goto :goto_0

    :pswitch_14
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mRecycleBinEdit:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mRecycleBinEdit:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinEditMode;

    goto :goto_0

    :pswitch_15
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mRecycleBinSelect:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mRecycleBinSelect:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

    goto :goto_0

    :pswitch_16
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mSearchEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchEditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mSearchEditMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchEditMode;

    goto :goto_0

    :pswitch_17
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mSearchMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mSearchMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

    goto :goto_0

    :pswitch_18
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mEdit:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mEdit:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;

    goto :goto_0

    :pswitch_19
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mSelect:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->mSelect:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;

    :cond_0
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
