.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->setTouchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;

.field public final synthetic val$onHolderTouchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$1;->val$onHolderTouchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$1;->val$onHolderTouchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;->onClick()V

    return-void
.end method
