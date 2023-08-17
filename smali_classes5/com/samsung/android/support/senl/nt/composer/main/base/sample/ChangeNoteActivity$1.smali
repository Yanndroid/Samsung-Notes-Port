.class Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;

.field public final synthetic val$entryList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;->val$entryList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;->val$entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->mBaseComposerFragment:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->changeNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
