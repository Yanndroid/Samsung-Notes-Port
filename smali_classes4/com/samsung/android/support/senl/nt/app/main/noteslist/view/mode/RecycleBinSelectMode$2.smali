.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;->onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

.field public final synthetic val$isMenuClicked:[Z

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;[ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;->val$isMenuClicked:[Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;->val$isMenuClicked:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/RecycleBinSelectMode$2;->val$uuid:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->setCheck(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
