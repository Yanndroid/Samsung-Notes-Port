.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;-><init>(Landroid/view/View;ILcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

.field public final synthetic val$selectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;->val$selectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;->val$selectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;->onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
