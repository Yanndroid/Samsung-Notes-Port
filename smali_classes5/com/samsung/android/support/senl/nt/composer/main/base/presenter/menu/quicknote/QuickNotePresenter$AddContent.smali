.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddContent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddContent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddContent;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    instance-of v0, p2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;ZZ)V

    return-void
.end method


# virtual methods
.method public createSuggestedContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->createSuggestedContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContent# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->executeTask()V

    return-void
.end method
