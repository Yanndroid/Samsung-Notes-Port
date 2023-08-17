.class Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CollectionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/penup/model/CollectionResource;",
        ">;"
    }
.end annotation


# static fields
.field private static final DP_DROPDOWN_PADDING_BOTTOM:I = 0xf

.field private static final DP_DROPDOWN_PADDING_LEFT:I = 0xc

.field private static final DP_DROPDOWN_PADDING_RIGHT:I = 0xc

.field private static final DP_DROPDOWN_PADDING_TOP:I = 0xf


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    new-instance p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-virtual {v3, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-virtual {v3, v2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    invoke-virtual {p3, p2, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object p2, p3

    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$600(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/penup/R$color;->collection_list_selected:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/penup/R$color;->collection_list_item:I

    :goto_0
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/penup/model/CollectionResource;

    invoke-virtual {p1}, Lcom/samsung/android/penup/model/CollectionResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/penup/R$color;->background:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    new-instance p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p2, 0x2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/penup/R$color;->collection_list_selected:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object p2, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/penup/model/CollectionResource;

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/penup/model/CollectionResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
