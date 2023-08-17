.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMicrosoftAccountLoginTipCard()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->addMicrosoftAccountLoginTipCard()V

    return-void
.end method

.method public getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    return-object v0
.end method

.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public showMeridianDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showMeridianDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;)V

    return-void
.end method

.method public startMeridianSettingProcess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->openSettingsMicrosoftLogin()V

    return-void
.end method
