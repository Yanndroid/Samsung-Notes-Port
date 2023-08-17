.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->getNumberedBadgeShadowBuilder(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

.field public final synthetic val$commonHolder:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;->val$commonHolder:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setImageView(Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;->val$commonHolder:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;Landroid/widget/ImageView;)V

    return-void
.end method
