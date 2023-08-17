.class public Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;,
        Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSuggestionPopup"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

.field private mAdapter:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;

.field public mClearHighlightOnDismiss:Z

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPosition:Landroid/graphics/Point;

.field private mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

.field private mSpanText:Ljava/lang/String;

.field private mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

.field private mSuggestionText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/Point;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpanText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mClearHighlightOnDismiss:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestions()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPosition:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpanText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->initContentView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->createPopupWindow()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->lambda$createPopupWindow$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private calculatePopupWidth()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->text_suggestion_popup_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/spen/R$string;->composer_delete:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-le v3, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->text_suggestion_popup_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->text_suggestion_popup_padding_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private createPopupWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->dismiss()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->calculatePopupWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mWidth:I

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/samsung/android/spen/R$style;->AnimationPopupWindow:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/samsung/android/sdk/pen/text/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/text/a;-><init>(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initContentView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->sdk_suggestion_popup:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContentView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/spen/R$id;->suggestionsListView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;-><init>(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mAdapter:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContentView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/spen/R$id;->delete_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$createPopupWindow$0()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mClearHighlightOnDismiss:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, v2, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;->onHighlightSuggestion(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearHighlightOnDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mClearHighlightOnDismiss:Z

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;->onDeleteClicked(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpanText:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-direct {p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;-><init>()V

    invoke-virtual {p4, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setSuggestionType(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p4, p2, p5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x2

    invoke-virtual {p4, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getUnderlineColor()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setUnderlineColor(I)V

    invoke-virtual {p4, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setSuggestions(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p3

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p5

    invoke-interface {p1, p4, p2, p3, p5}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;->onItemClicked(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Ljava/lang/String;II)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->dismiss()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p4

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p5

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;->onItemClicked(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    return-void
.end method

.method public setSuggestionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    return-void
.end method

.method public show(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    if-gez v3, :cond_1

    move v3, v5

    :cond_1
    add-int v6, v3, v4

    if-le v6, v1, :cond_2

    sub-int v3, v1, v4

    :cond_2
    iget v1, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    if-gez v1, :cond_3

    move v1, v5

    :cond_3
    add-int v4, v1, v2

    if-le v4, v0, :cond_4

    sub-int v1, v0, v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getUnderlineColor()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;->onHighlightSuggestion(IIII)V

    :cond_5
    return-void
.end method

.method public update(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/Point;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpan:Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPosition:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSpanText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestions()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mSuggestionText:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mAdapter:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->setSuggestionText(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->createPopupWindow()V

    return-void
.end method

.method public updatePosition(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->mPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->createPopupWindow()V

    return-void
.end method
