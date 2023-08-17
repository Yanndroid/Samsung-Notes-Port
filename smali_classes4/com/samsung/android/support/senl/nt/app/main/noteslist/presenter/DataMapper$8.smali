.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    move-result-object v0

    return-object v0
.end method
