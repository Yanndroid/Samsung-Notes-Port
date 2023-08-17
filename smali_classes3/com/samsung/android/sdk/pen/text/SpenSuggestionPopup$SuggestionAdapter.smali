.class Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSuggestionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->this$0:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->access$000(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mSuggestionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/spen/R$layout;->sdk_suggestion_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setSuggestionText(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$SuggestionAdapter;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
