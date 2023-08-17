.class Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$itemList:Ljava/util/List;

.field public final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->val$onClickListener:Landroid/view/View$OnClickListener;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->val$itemList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of p3, p2, Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->val$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_listpopupwindow_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_0
    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;->val$itemList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$id;->item_text:I

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
