.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLayoutChangeListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-static {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Landroid/app/Activity;Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p1, p2, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return-void
.end method
