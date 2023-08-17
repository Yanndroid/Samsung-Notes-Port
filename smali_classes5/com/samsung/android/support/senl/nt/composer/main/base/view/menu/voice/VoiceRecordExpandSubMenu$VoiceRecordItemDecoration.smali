.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu$VoiceRecordItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceRecordItemDecoration"
.end annotation


# instance fields
.field private final mColor:I

.field private final mSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu$VoiceRecordItemDecoration;->mColor:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu$VoiceRecordItemDecoration;->mSize:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu$VoiceRecordItemDecoration;->mColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v7

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu$VoiceRecordItemDecoration;->mSize:I

    add-int/2addr v1, v0

    int-to-float v2, v6

    int-to-float v3, v0

    int-to-float v4, v7

    int-to-float v5, v1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
