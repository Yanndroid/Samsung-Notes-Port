.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->startCoeditWithChangedNote(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

.field public final synthetic val$coedit:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

.field public final synthetic val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

.field public final synthetic val$initData:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$coedit:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$initData:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$coedit:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->setCoeditListener(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$coedit:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;)V

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->snapCoedit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    return-void
.end method
